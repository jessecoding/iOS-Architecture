//
//  ViewController.swift
//  App
//
//  Created by jesse.xu on 2020/3/19.
//  Copyright © 2020 fleetlabs.com. All rights reserved.
//

import UIKit
import QMUIKit

class ViewController: UIViewController, QMUINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = QMUICMI().whiteColor
    }


//    func preferredNavigationBarHidden() -> Bool {
//        return true
//    }
    
//    func customNavigationBarTransitionKey() -> String? {
//        return "re"
//    }
    
    func shouldCustomizeNavigationBarTransitionIfHideable() -> Bool {
        return true
    }

}

