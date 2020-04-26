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
        viewModel.updateNotify { _ in
            DispatchQueue.main.async { self.tableView.reloadData() }
            print(#function)
        }
        viewModel.updateBanchanNotify { cell, banchan in
            guard let banchan = banchan else { return }
            cell.titleLabel.text = banchan.title
        }
    }
    
    private func configureUseCase() {
        BanchanUseCase.performFetching(with: NetworkManager()) { [weak self] index, banchans in
            self?.viewModel.append(key: index, value: banchans.map { BanchanViewModel(with: $0) })
        }
    }
}
