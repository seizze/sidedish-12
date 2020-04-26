//
//  CategorizedBanchanViewModel.swift
//  Banchan
//
//  Created by Chaewan Park on 2020/04/23.
//  Copyright © 2020 Chaewan Park. All rights reserved.
//

import UIKit

class CategorizedBanchanViewModel: NSObject, ViewModelBinding {
    typealias Key = [Int: [BanchanViewModel]]?
    typealias Data = String
    typealias BanchanHandler = (BanchanCell, BanchanViewModel.Key, BanchanViewModel.Data) -> Void
    
    private var categorizedBanchan: Key = nil {
        didSet { changeHandler(categorizedBanchan, "") }
    }
    
    private var changeHandler: (Key, Data) -> Void
    
    private var banchanChangeHandler: BanchanHandler = { _, _, _ in }
    
    var categoryCount: Int {
        return categorizedBanchan?.count ?? 0
    }
    
    init(with categorizedBanchan: Key, handler: @escaping (Key, Data) -> Void = { _, _ in }) {
        self.changeHandler = handler
        self.categorizedBanchan = categorizedBanchan
        changeHandler(categorizedBanchan, "")
    }
    
    func update(categorizedBanchan: Key) {
        self.categorizedBanchan = categorizedBanchan
    }
    
    func updateNotify(handler: @escaping (Key, Data) -> Void) {
        changeHandler = handler
    }
    
    func append(key: Int, value: [BanchanViewModel]) {
        categorizedBanchan?[key] = value
    }
    
    func banchan(category: Int, index: Int) -> BanchanViewModel? {
        return categorizedBanchan?[category]?[index]
    }
    
    func banchanCount(of category: Int) -> Int {
        return categorizedBanchan?[category]?.count ?? 0
    }
    
    func updateBanchanNotify(handler: @escaping BanchanHandler) {
        banchanChangeHandler = handler
    }
}

extension CategorizedBanchanViewModel: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return categoryCount
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return banchanCount(of: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: BanchanCell.reuseIdentifier, for: indexPath) as? BanchanCell else { return BanchanCell() }
        banchan(category: indexPath.section, index: indexPath.row)?
            .updateNotify { self.banchanChangeHandler(cell, $0, $1) }
        return cell
    }
}
