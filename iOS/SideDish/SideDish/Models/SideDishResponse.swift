//
//  SideDishResponse.swift
//  SideDish
//
//  Created by Chaewan Park on 2020/04/22.
//  Copyright © 2020 Chaewan Park. All rights reserved.
//

import Foundation

struct SideDishResponse: Codable {
    let statusCode: Int
    let body: [Body]
}

struct Body: Codable {
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

enum DeliveryType: String, Codable {
    case dawn = "새벽배송"
    case nationwide = "전국택배"
}

enum Badge: String, Codable {
    case event = "이벤트특가"
    case launching = "론칭특가"
}
