//
//  UserProfile.swift
//  UnitTesting
//
//  Created by Orla Mitchell on 2022-06-14.
//

import Foundation

class UserProfile {
    private let fetchDataService: FetchDataService
    var userProfileData: Bool = false

    init(fetchDataService: FetchDataService = FetchDataServiecImplementation()) {
        self.fetchDataService = fetchDataService
    }

    func updateUserProfileData() {
        fetchDataService.getSomeData { result in
            switch result {
            case let .success(value):
                self.userProfileData = value
            case .failure:
                self.userProfileData = false
            }
        }
    }
}
