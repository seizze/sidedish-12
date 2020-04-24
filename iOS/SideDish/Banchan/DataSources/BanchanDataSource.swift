//
//  BanchanDataSource.swift
//  Banchan
//
//  Created by Chaewan Park on 2020/04/21.
//  Copyright © 2020 Chaewan Park. All rights reserved.
//

import UIKit

class BanchanDataSource: NSObject {
    var numberOfSections: (() -> Int)?
    var numberOfRowsInSection: ((Int) -> Int)?
    var bindCell: ((BanchanCell, Int, Int) -> Void)?
    var updateCell: ((Int, Int) -> Void)?
}

extension BanchanDataSource: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return numberOfSections?() ?? 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfRowsInSection?(section) ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: BanchanCell.reuseIdentifier, for: indexPath) as? BanchanCell else { return UITableViewCell() }
        bindCell?(cell, indexPath.section, indexPath.row)
        return cell
    }
}
