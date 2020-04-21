//
//  SideDishDataSource.swift
//  SideDish
//
//  Created by Chaewan Park on 2020/04/21.
//  Copyright © 2020 Chaewan Park. All rights reserved.
//

import UIKit

class SideDishDataSource: NSObject {
    
}

extension SideDishDataSource: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SideDishCell.reuseIdentifier, for: indexPath) as? SideDishCell else { return UITableViewCell() }
        return cell
    }
}
