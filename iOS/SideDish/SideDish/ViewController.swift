//
//  ViewController.swift
//  SideDish
//
//  Created by Chaewan Park on 2020/04/21.
//  Copyright © 2020 Chaewan Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private let delegate = SideDishDelegate()
    private let dataSource = SideDishDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = delegate
        tableView.dataSource = dataSource
        
        tableView.register(SideDishHeaderView.self, forHeaderFooterViewReuseIdentifier: SideDishHeaderView.reuseIdentifier)
    }
}
