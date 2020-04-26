//
//  Banchan.swift
//  Banchan
//
//  Created by Chaewan Park on 2020/04/23.
//  Copyright © 2020 Chaewan Park. All rights reserved.
//

import Foundation

struct Banchan: Decodable {
    let detailHash: String
    let image: String
    let alt: String
    let deliveryType: [DeliveryType]
    let title, bodyDescription: String
    let nPrice: String?
    let sPrice: String
    let badge: [Badge]?
    
    enum CodingKeys: String, CodingKey {
        case detailHash = "detail_hash"
        case image, alt
        case deliveryType = "delivery_type"
        case title
        case bodyDescription = "description"
        case nPrice = "n_price"
        case sPrice = "s_price"
        case badge
    }
}

enum DeliveryType: String, Decodable {
    case dawn = "새벽배송"
    case nationwide = "전국택배"
}

enum Badge: String, Decodable {
    case event = "이벤트특가"
    case launching = "론칭특가"
}

extension Banchan {
    var isOnSale: Bool {
        return nPrice == nil
    }
    
    var salePrice: String {
        return sPrice.trimmingCharacters(in: ["원"])
    }
}
