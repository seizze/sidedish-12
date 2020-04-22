//
//  APIRouter.swift
//  SideDish
//
//  Created by Chaewan Park on 2020/04/22.
//  Copyright © 2020 Chaewan Park. All rights reserved.
//

import Foundation

enum APIRouter: APIBuilder {
    case main
    case soup
    case side
    
    var path: String {
        switch self {
        case .main: return Endpoints.main
        case .soup: return Endpoints.soup
        case .side: return Endpoints.side
        }
    }
}
