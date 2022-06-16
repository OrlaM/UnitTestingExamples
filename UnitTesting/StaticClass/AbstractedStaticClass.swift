//
//  AbstractedStaticClass.swift
//  UnitTesting
//
//  Created by Orla Mitchell on 2022-06-14.
//

import Foundation

protocol AbstractedStaticClassProtocol {
    func doSomeWork()
}

class StaticClass: AbstractedStaticClassProtocol {

    func doSomeWork() {
        StaticClass.doSomeWork()
    }

    static func doSomeWork() {
        print("Doing work")
    }
}
