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

class AbstractedStaticClass: AbstractedStaticClassProtocol {

    func doSomeWork() {
        AbstractedStaticClass.doSomeWork()
    }

    static func doSomeWork() {
        print("Doing work")
    }
}
