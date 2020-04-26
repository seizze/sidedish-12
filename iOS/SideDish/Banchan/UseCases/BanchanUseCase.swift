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
                                completion: @escaping (Int, [Banchan]) -> ()) {
        MainPageAPIRouter.allCases.enumerated().forEach { index, router in
            manager.request(BanchanResponse.self, with: router.urlRequest()) { result in
                if case let .success(response) = result { completion(index, response.body) }
            }
        }
    }
    
    static func performImageFetching(with manager: NetworkManageable,
                                     url: String,
                                     completion: @escaping (Data) -> ()) {
        guard let url = URL(string: url) else { return }
        manager.requestData(with: URLRequest(url: url)) { result in
            if case let .success(response) = result { completion(response) }
        }
    }
}
