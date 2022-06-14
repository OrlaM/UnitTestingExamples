//
//  UserProfileTests.swift
//  UnitTestingTests
//
//  Created by Orla Mitchell on 2022-06-14.
//

import XCTest
@testable import UnitTesting

class UserProfileTests: XCTestCase {

    func testUpdateUserProfileDataWithSuccess() {
        let mockService = FetchDataServiceMock()
        let subject = UserProfile(fetchDataService: mockService)

        subject.updateUserProfileData()

        mockService.callGetSomeDataCompletion(withResult: .success(true))

        XCTAssert(mockService.getSomeDataCallCount == 1)
        XCTAssert(subject.userProfileData == true)
    }
}

