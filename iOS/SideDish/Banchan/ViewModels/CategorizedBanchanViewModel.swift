//
//  CategorizedBanchanViewModel.swift
//  Banchan
//
//  Created by Chaewan Park on 2020/04/23.
//  Copyright © 2020 Chaewan Park. All rights reserved.
//

import UIKit

struct BanchanChangeDetails {
    let section: Int?
    let overallData: [Int: [BanchanViewModel]]
}

extension BanchanChangeDetails {
    init(with data: [Int: [BanchanViewModel]]) {
        section = nil
        overallData = data
    }
}

class CategorizedBanchanViewModel: NSObject, ViewModelBinding {
    typealias Key = BanchanChangeDetails?
    typealias Data = Void?
    typealias BanchanHandler = (BanchanCell, BanchanViewModel.Key, BanchanViewModel.Data) -> Void
    
    private var banchanChange: Key = nil {
        didSet { changeHandler(banchanChange, nil) }
    }
    
    private var changeHandler: (Key, Data) -> Void
    
    private var banchanChangeHandler: BanchanHandler = { _, _, _ in }
    
    init(with categorizedBanchan: Key = nil, handler: @escaping (Key, Data) -> Void = { _, _ in }) {
        self.changeHandler = handler
        self.banchanChange = BanchanChangeDetails(with: [Int: [BanchanViewModel]]())
        changeHandler(categorizedBanchan, nil)
    }
    
    func update(categorizedBanchan: Key) {
        self.banchanChange = categorizedBanchan
    }
    
    func updateNotify(handler: @escaping (Key, Data) -> Void) {
        changeHandler = handler
    }
    
    func append(key: Int, value: [BanchanViewModel]) {
        guard var data = banchanChange?.overallData else { return }
        data[key] = value
        banchanChange = BanchanChangeDetails(section: key, overallData: data)
    }
    
    func banchan(category: Int, index: Int) -> BanchanViewModel? {
        return banchanChange?.overallData[category]?[index]
    }
    
    func banchanCount(of category: Int) -> Int {
        return banchanChange?.overallData[category]?.count ?? 0
    }
    
    func updateBanchanNotify(handler: @escaping BanchanHandler) {
        banchanChangeHandler = handler
    }
}

extension CategorizedBanchanViewModel: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
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
