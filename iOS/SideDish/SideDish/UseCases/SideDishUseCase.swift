//
//  SideDishUseCase.swift
//  SideDish
//
//  Created by Chaewan Park on 2020/04/22.
//  Copyright © 2020 Chaewan Park. All rights reserved.
//

import Foundation

struct SideDishUseCase {
    static func performFetching(with manager: NetworkManageable,
                                completion: @escaping (SideDishResponse) -> ()) {
        MainPageAPIRouter.allCases.forEach {
            manager.request(SideDishResponse.self, with: $0.urlRequest()) { result in
                print(result)
            }
        }
    }
}
