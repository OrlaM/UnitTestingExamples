//
//  FetchDataServiceMock.swift
//  UnitTestingTests
//
//  Created by Orla Mitchell on 2022-06-14.
//

import Foundation
@testable import UnitTesting

class FetchDataServiceMock: FetchDataService {

    var getSomeDataCallCount = 0
    var getSomeDataCompletion: ((Result<Bool, Error>) -> Void)?

    func callGetSomeDataCompletion(withResult result: Result<Bool, Error>) {
        getSomeDataCompletion?(result)
    }

    func getSomeData(completion: @escaping (Result<Bool, Error>) -> Void) {
        getSomeDataCallCount += 1
        getSomeDataCompletion = completion
    }
}
