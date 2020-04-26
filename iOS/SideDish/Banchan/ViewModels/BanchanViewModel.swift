//
//  BanchanViewModel.swift
//  Banchan
//
//  Created by Chaewan Park on 2020/04/23.
//  Copyright © 2020 Chaewan Park. All rights reserved.
//

import Foundation

class BanchanViewModel: ViewModelBinding {
    typealias Key = Banchan?
    typealias Data = Int?
    
    private var banchan: Key = nil {
        didSet { changeHandler(banchan, distanceBetweenSaleLabels) }
    }
    
    private var changeHandler: (Key, Data) -> Void
    
    var title: String? {
        return banchan?.title
    }
    
    init(with banchan: Key, handler: @escaping (Key, Data) -> Void = { _, _ in }) {
        self.changeHandler = handler
        self.banchan = banchan
        changeHandler(banchan, distanceBetweenSaleLabels)
    }
    
    func update(banchan: Key) {
        self.banchan = banchan
    }
    
    func updateNotify(handler: @escaping (Key, Data) -> Void) {
        self.changeHandler = handler
        changeHandler(banchan, distanceBetweenSaleLabels)
    }
}

extension BanchanViewModel {
    var distanceBetweenSaleLabels: Int {
        return !(banchan?.isOnSale ?? true) ? 4 : 0
    }
}
