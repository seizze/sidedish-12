//
//  Banchan.swift
//  Banchan
//
//  Created by Chaewan Park on 2020/04/23.
//  Copyright © 2020 Chaewan Park. All rights reserved.
//

import Foundation

struct Banchan: Decodable {
    let id: Int
    let image: String
    let alt: String
    let deliveryType: [DeliveryType]
    let title, banchanDescription: String
    let nPrice: String?
    let sPrice: String
    let badge: [Badge]?
    
    enum CodingKeys: String, CodingKey {
        case id, image, alt
        case deliveryType = "delivery_type"
        case title
        case banchanDescription = "description"
        case nPrice = "n_price"
        case sPrice = "s_price"
        case badge
    }
}

enum DeliveryType: String, Decodable {
    case dawn = "새벽배송"
    case nationwide = "전국택배"
}

struct Badge: Decodable {
    let name: String
    let color: String
    
    enum CodingKeys: String, CodingKey {
        case name = "badge_name"
        case color = "badge_color"
    }
}

extension Banchan {
    var isOnSale: Bool {
        return nPrice == nil
    }
    
    var salePrice: String {
        return sPrice.trimmingCharacters(in: ["원"])
    }
}
