//
//  NetworkManager.swift
//  Banchan
//
//  Created by Chaewan Park on 2020/04/22.
//  Copyright © 2020 Chaewan Park. All rights reserved.
//

import Foundation

enum HTTPError: Error {
    case notFound
    
    var localizedDescription: String {
        switch self {
        case .notFound: return "Not Found"
        }
    }
}

protocol NetworkManageable {
    func request<T: Decodable>(_ responseType: T.Type,
                               with request: URLRequest?,
                               completion: @escaping (Result<T, Error>) -> Void)
    func requestData(with request: URLRequest?,
                     completion: @escaping (Result<Data, Error>) -> Void)
}
 
extension NetworkManageable {
    func request<T: Decodable>(_ responseType: T.Type,
                               with request: URLRequest?,
                               completion: @escaping (Result<T, Error>) -> Void) {
        guard let request = request else { return }
        
        URLSession(configuration: .default).dataTask(with: request) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            guard let data = data, let httpResponse = response as? HTTPURLResponse else { return }
            if httpResponse.isValid() {
                self.decode(responseType, from: data) { completion($0) }
            } else {
                completion(.failure(HTTPError.notFound))
            }
        }.resume()
    }
    
    func requestData(with request: URLRequest?,
                     completion: @escaping (Result<Data, Error>) -> Void) {
        guard let request = request else { return }
        
        URLSession(configuration: .default).dataTask(with: request) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            guard let data = data, let httpResponse = response as? HTTPURLResponse else { return }
            if httpResponse.isValid() {
                completion(.success(data))
            } else {
                completion(.failure(HTTPError.notFound))
            }
        }.resume()
    }
    
    private func decode<T: Decodable>(_ type: T.Type,
                                      from data: Data,
                                      completion: @escaping (Result<T, Error>) -> Void) {
        do {
            let response = try JSONDecoder().decode(T.self, from: data)
            completion(.success(response))
        } catch {
            completion(.failure(error))
        }
    }
}

struct NetworkManager: NetworkManageable { }

private extension HTTPURLResponse {
    func isValid() -> Bool {
        switch statusCode {
        case 200..<300: return true
        default: return false
        }
    }
}
