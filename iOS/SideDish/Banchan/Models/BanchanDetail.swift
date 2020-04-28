//
//  BanchanDetail.swift
//  Banchan
//
//  Created by Chaewan Park on 2020/04/29.
//  Copyright © 2020 Chaewan Park. All rights reserved.
//

import Foundation

struct BanchanDetail: Decodable {
    let title: String
    let topImage: String
    let thumbImages: [String]
    let dataDescription, point, deliveryInfo: String
    let deliveryFee: String?
    let nPrice: String?
    let sPrice: String
    let detailSection: [String]

    enum CodingKeys: String, CodingKey {
        case title
        case topImage = "top_image"
        case thumbImages = "thumb_images"
        case dataDescription = "description"
        case point
        case deliveryInfo = "delivery_info"
        case deliveryFee = "delivery_fee"
        case nPrice = "n_price"
        case sPrice = "s_price"
        case detailSection = "detail_section"
    }
}
