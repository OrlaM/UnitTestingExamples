//
//  MainQueue.swift
//  UnitTesting
//
//  Created by Orla Mitchell on 2022-06-14.
//

import Foundation

protocol MainQueue {
    func async(execute work: @escaping () -> Void)
}

extension DispatchQueue: MainQueue {
    func async(execute work: @escaping () -> Void) {
        self.async(qos: self.qos, execute: work)
    }
}
