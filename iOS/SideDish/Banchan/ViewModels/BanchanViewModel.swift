//
//  BanchanViewModel.swift
//  Banchan
//
//  Created by Chaewan Park on 2020/04/23.
//  Copyright © 2020 Chaewan Park. All rights reserved.
//

import Foundation

protocol ViewModelBinding {
    associatedtype Key
    func updateNotify(handler: @escaping (Key) -> Void)
}

class BanchanViewModel: ViewModelBinding {
    typealias Key = Banchan?
    
    private var banchan: Key = nil {
        didSet { changeHandler(banchan) }
    }
    
    private var changeHandler: (Key) -> Void
    
    init(with banchan: Key, handler: @escaping (Key) -> Void = { _ in }) {
        self.changeHandler = handler
        self.banchan = banchan
        changeHandler(banchan)
    }
    
    func update(banchan: Key) {
        self.banchan = banchan
    }
    
    func updateNotify(handler: @escaping (Key) -> Void) {
        self.changeHandler = handler
    }
}
