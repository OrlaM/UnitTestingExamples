//
//  GlobalStateSingleton.swift
//  UnitTesting
//
//  Created by Orla Mitchell on 2022-06-14.
//

import Foundation

protocol State {
    var someState: String { get set }
}

class GlobalStateSingleton: State {
    static let shared = GlobalStateSingleton()
    var someState = "state"
}
