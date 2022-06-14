//
//  HomeScreen.swift
//  UnitTesting
//
//  Created by Orla Mitchell on 2022-06-14.
//

import Foundation

class HomeScreen {

    private let staticClass: AbstractedStaticClassProtocol

    init(staticClass: AbstractedStaticClassProtocol = AbstractedStaticClass()) {
        self.staticClass = staticClass
    }

    func setup() {
        TraditionalStaticClass.doSomeWork()

        AbstractedStaticClass.doSomeWork()

        staticClass.doSomeWork()
    }
}
