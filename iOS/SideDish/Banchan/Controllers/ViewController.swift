//
//  ViewController.swift
//  Banchan
//
//  Created by Chaewan Park on 2020/04/21.
//  Copyright © 2020 Chaewan Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var viewModel = CategorizedBanchanViewModel(with: [Int: [BanchanViewModel]]())
    private let delegate = BanchanDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
        configureViewModel()
        configureUseCase()
    }
    
    private func configureTableView() {
        tableView.delegate = delegate
        tableView.dataSource = viewModel
        
        tableView.register(BanchanHeaderView.nib, forHeaderFooterViewReuseIdentifier: BanchanHeaderView.reuseIdentifier)
    }
    
    private func configureViewModel() {
        viewModel.updateNotify { _, _ in
            DispatchQueue.main.async { self.tableView.reloadData() }
            print(#function)
        }
        viewModel.updateBanchanNotify { cell, banchan, data in
            guard let banchan = banchan else { return }
            cell.titleLabel.text = banchan.title
            cell.detailLabel.text = banchan.bodyDescription
            cell.normalPriceLabel.text = banchan.nPrice
            cell.salePriceLabel.text = banchan.salePrice
            cell.priceStackView.spacing = CGFloat(integerLiteral: data ?? 0)
            banchan.badge?.forEach { cell.badgeStackView.addArrangedSubview($0.badgeType) }
            BanchanUseCase.performImageFetching(with: NetworkManager(), url: banchan.image) {
                guard let image = UIImage(data: $0) else { return }
                cell.banchanImageView.image = image
            }
        }
    }
    
    private func configureUseCase() {
        BanchanUseCase.performFetching(with: NetworkManager()) { [weak self] index, banchans in
            self?.viewModel.append(key: index, value: banchans.map { BanchanViewModel(with: $0) })
        }
    }
}
