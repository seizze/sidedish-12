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
    
    private let delegate = BanchanDelegate()
    private let dataSource = BanchanDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = delegate
        tableView.dataSource = dataSource
        
        tableView.register(BanchanHeaderView.nib, forHeaderFooterViewReuseIdentifier: BanchanHeaderView.reuseIdentifier)
        
        BanchanUseCase.performFetching(with: NetworkManager()) { _ in }
    }
}
