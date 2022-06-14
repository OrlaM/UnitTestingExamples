//
//  MainQueueMock.swift
//  UnitTestingTests
//
//  Created by Orla Mitchell on 2022-06-14.
//

import Foundation
@testable import UnitTesting

class MainQueueMock: MainQueue {
    func async(execute work: @escaping () -> Void) {
        work()
    }
}
