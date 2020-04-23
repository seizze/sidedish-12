//
//  BanchanUseCase.swift
//  Banchan
//
//  Created by Chaewan Park on 2020/04/22.
//  Copyright © 2020 Chaewan Park. All rights reserved.
//

import Foundation

struct BanchanUseCase {
    static func performFetching(with manager: NetworkManageable,
                                completion: @escaping (BanchanResponse) -> ()) {
        MainPageAPIRouter.allCases.forEach {
            manager.request(BanchanResponse.self, with: $0.urlRequest()) { result in
                print(result)
            }
        }
    }
}
