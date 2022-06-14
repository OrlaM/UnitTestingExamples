//
//  DispatchViewController.swift
//  UnitTesting
//
//  Created by Orla Mitchell on 2022-06-14.
//

import UIKit

class DispatchViewController: UIViewController {

    private let mainQueue: MainQueue

    var screenTitle = "Not set"

    init(mainQueue: MainQueue = DispatchQueue.main) {
        self.mainQueue = mainQueue
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func returnFromABackgroundThread() {
        mainQueue.async {
            self.screenTitle = "Home Screen"
        }
    }
}

