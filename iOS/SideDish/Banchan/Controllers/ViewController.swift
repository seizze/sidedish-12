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
        configureUseCase()
    }
    
    private func configureTableView() {
        tableView.delegate = delegate
        tableView.dataSource = dataSource
        
        tableView.register(BanchanHeaderView.nib, forHeaderFooterViewReuseIdentifier: BanchanHeaderView.reuseIdentifier)
    }
    
    private func configureUseCase() {
        BanchanUseCase.performFetching(with: NetworkManager()) { [weak self] index, banchans in
            self?.viewModel.append(key: index, value: banchans.map { BanchanViewModel(with: $0) })
        }
    }
}
