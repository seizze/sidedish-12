//
//  CategorizedBanchanViewModel.swift
//  Banchan
//
//  Created by Chaewan Park on 2020/04/23.
//  Copyright © 2020 Chaewan Park. All rights reserved.
//

import Foundation

class CategorizedBanchanViewModel: ViewModelBinding {
    typealias Key = [Int: [BanchanViewModel]]?
    
    private var categorizedBanchan: Key = nil {
        didSet { changeHandler(categorizedBanchan) }
    }
    
    private var changeHandler: (Key) -> Void
    
    var categoryCount: Int? {
        return categorizedBanchan?.count
    }
    
    init(with categorizedBanchan: Key, handler: @escaping (Key) -> Void = { _ in }) {
        self.changeHandler = handler
        self.categorizedBanchan = categorizedBanchan
        changeHandler(categorizedBanchan)
    }
    
    func update(categorizedBanchan: Key) {
        self.categorizedBanchan = categorizedBanchan
    }
    
    func updateNotify(handler: @escaping (Key) -> Void) {
        self.changeHandler = handler
    }
    
    func append(key: Int, value: [BanchanViewModel]) {
        categorizedBanchan?[key] = value
    }
    
    func banchanCount(of category: Int) -> Int? {
        return categorizedBanchan?[category]?.count
    }
    
    func updateBanchanNotify(section: Int, row: Int, handler: @escaping (BanchanViewModel.Key) -> Void) {
        categorizedBanchan?[section]?[row].updateNotify(handler: handler)
    }
}
