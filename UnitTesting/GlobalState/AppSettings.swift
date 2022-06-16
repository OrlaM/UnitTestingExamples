//
//  AppSettings.swift
//  UnitTesting
//
//  Created by Orla Mitchell on 2022-06-14.
//

import Foundation

class AppSettings {

    private var stateHandler: State

    init(stateHandler: State = GlobalStateSingleton.shared) {
        self.stateHandler = stateHandler
    }

    func updateAppState() {
        stateHandler.someState = "new-state"
    }
}
