//
//  BadgeStackView.swift
//  SideDish
//
//  Created by Chaewan Park on 2020/04/21.
//  Copyright © 2020 Chaewan Park. All rights reserved.
//

import UIKit

@IBDesignable
class BadgeStackView: UIStackView {
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 30, height: 20)
    }
}
