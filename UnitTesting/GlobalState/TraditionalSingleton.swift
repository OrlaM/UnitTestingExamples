//
//  TraditionalSingleton.swift
//  UnitTesting
//
//  Created by Orla Mitchell on 2022-06-14.
//

import Foundation

class MySingleton {
    static let shared = MySingleton()
    var someState = "state"
}

class UsesSingletons {
    func updateState() {
        MySingleton.shared.someState = "new-state"
    }
}
