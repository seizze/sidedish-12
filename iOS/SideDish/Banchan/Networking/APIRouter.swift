//
//  APIRouter.swift
//  Banchan
//
//  Created by Chaewan Park on 2020/04/22.
//  Copyright © 2020 Chaewan Park. All rights reserved.
//

import Foundation

enum MainPageAPIRouter: String, APIBuilder, CaseIterable {
    case main
    case soup
    case side
    
    var path: String {
        return Endpoints.baseURL
    }
    
    var query: String? {
        return "category=\(rawValue)"
    }
}

enum DetailPageAPIRouter: APIBuilder {
    case detail(banchanID: Int)
    
    var path: String {
        switch self {
        case let .detail(id): return Endpoints.baseURL + "/\(id)"
        }
    }
}
