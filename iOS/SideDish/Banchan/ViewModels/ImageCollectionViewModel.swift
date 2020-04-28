//
//  ImageCollectionViewModel.swift
//  Banchan
//
//  Created by Chaewan Park on 2020/04/29.
//  Copyright © 2020 Chaewan Park. All rights reserved.
//

import UIKit

class ImageCollectionViewModel: ViewModelBinding {
    typealias Key = [Int: UIImage?]?
    
    private var images: Key = nil {
        didSet { changeHandler(images) }
    }
    
    private var changeHandler: (Key) -> Void
    
    init(with images: Key = [:], handler: @escaping (Key) -> Void = { _ in }) {
        self.changeHandler = handler
        self.images = images
        changeHandler(images)
    }
    
    func update(images: Key) {
        self.images = images
    }
    
    func updateNotify(handler: @escaping (Key) -> Void) {
        self.changeHandler = handler
    }
    
    func add(_ image: UIImage, at index: Int) {
        images?[index] = image
        print(images)
    }
}
