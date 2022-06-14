//
//  DispatchViewControllerTests.swift
//  UnitTestingTests
//
//  Created by Orla Mitchell on 2022-06-14.
//

import XCTest
@testable import UnitTesting

class DispatchViewControllerTests: XCTestCase {

    func testResturnFromBackgroundThread() {
        let subject = DispatchViewController(mainQueue: MainQueueMock())
        subject.returnFromABackgroundThread()

        XCTAssert(subject.screenTitle == "Home Screen")
    }
}
