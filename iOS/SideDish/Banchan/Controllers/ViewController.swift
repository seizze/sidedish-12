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
    private let dataSource = BanchanDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
        configureDataSource()
        configureViewModel()
        configureUseCase()
    }
    
    private func configureTableView() {
        tableView.delegate = delegate
        tableView.dataSource = dataSource
        
        tableView.register(BanchanHeaderView.nib, forHeaderFooterViewReuseIdentifier: BanchanHeaderView.reuseIdentifier)
    }
    
    private func configureDataSource() {
        dataSource.numberOfSections = { [weak self] in
            self?.viewModel.categoryCount ?? 0
        }
        dataSource.numberOfRowsInSection = { [weak self] in
            self?.viewModel.banchanCount(of: $0) ?? 0
        }
        dataSource.bindCell = { [weak self] cell, section, row in
            self?.viewModel.updateBanchanNotify(section: section, row: row) { banchan in
                guard let banchan = banchan else { return }
                cell.titleLabel.text = banchan.title
            }
        }
    }
    
    private func configureViewModel() {
        viewModel.updateNotify { _ in
            DispatchQueue.main.async { self.tableView.reloadData() }
            print(#function)
        }
    }
    
    private func configureUseCase() {
        BanchanUseCase.performFetching(with: NetworkManager()) { [weak self] index, banchans in
            self?.viewModel.append(key: index, value: banchans.map { BanchanViewModel(with: $0) })
        }
    }
}
