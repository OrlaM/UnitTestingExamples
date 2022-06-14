//
//  FetchDataService.swift
//  UnitTesting
//
//  Created by Orla Mitchell on 2022-06-14.
//

import Foundation

protocol FetchDataService {
    func getSomeData(completion: @escaping (Result<Bool, Error>) -> Void)
}

class FetchDataServiecImplementation: FetchDataService {
    func getSomeData(completion: @escaping (Result<Bool, Error>) -> Void) {

        let request = URLRequest(url: URL(string: "https://google.com")!)

        URLSession.shared.dataTask(with: request) { data, response, error in

            if let error = error {
                completion(.failure(error))
            } else {
                completion(.success(true))
            }
        }.resume()
    }
}
