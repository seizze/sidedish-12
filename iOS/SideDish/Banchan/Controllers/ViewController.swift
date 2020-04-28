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
    
    private var viewModel = CategorizedBanchanViewModel()
    private let delegate = BanchanDelegate()
    
    private let group = DispatchGroup()
    private let queue = DispatchQueue(label: "networking")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
        configureViewModel()
        configureUseCase()
    }
    
    private func configureTableView() {
        tableView.register(BanchanHeaderView.nib, forHeaderFooterViewReuseIdentifier: BanchanHeaderView.reuseIdentifier)
        tableView.delegate = delegate
        tableView.dataSource = viewModel
    }
    
    private func configureViewModel() {
        viewModel.updateNotify { change, _ in
            DispatchQueue.main.async {
                if let section = change?.section {
                    self.tableView.reloadSections(IndexSet(section...section), with: .automatic)
                } else {
                    self.tableView.reloadData()
                }
                self.group.leave();
            }
        }
        viewModel.updateBanchanNotify { cell, banchan, data in
            guard let banchan = banchan else { return }
            self.bindCell(cell: cell, banchan: banchan, data: data)
        }
    }
    
    private func bindCell(cell: BanchanCell,
                          banchan: Banchan,
                          data: Int?) -> Void {
        cell.titleLabel.text = banchan.title
        cell.detailLabel.text = banchan.bodyDescription
        cell.normalPriceLabel.text = banchan.nPrice
        cell.salePriceLabel.text = banchan.salePrice
        cell.priceStackView.spacing = CGFloat(integerLiteral: data ?? 0)
        banchan.badge?.forEach { cell.badgeStackView.addArrangedSubview($0.badgeType) }
        BanchanUseCase.performImageFetching(with: NetworkManager(), url: banchan.image) {
            guard let image = UIImage(data: $0) else { return }
            DispatchQueue.main.async { cell.banchanImageView.image = image }
        }
    }
    
    private func configureUseCase() {
        BanchanUseCase.performFetching(with: NetworkManager()) { index, banchans in
            self.queue.async {
                self.group.wait()
                self.group.enter()
                self.viewModel.append(key: index, value: banchans.map { BanchanViewModel(with: $0) })
            }
        }
    }
}
