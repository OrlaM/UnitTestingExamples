//
//  AppSettingsTests.swift
//  UnitTestingTests
//
//  Created by Orla Mitchell on 2022-06-14.
//

import XCTest
@testable import UnitTesting

class AppSettingsTests: XCTestCase {

    func testUpdateAppState() {
        let stateMock = StateMock()
        let subject = AppSettings(stateHandler: stateMock)

        subject.updateAppState()

        XCTAssert(stateMock.someState == "new-state")
    }
}
