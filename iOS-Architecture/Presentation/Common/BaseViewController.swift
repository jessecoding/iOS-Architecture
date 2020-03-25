//
//  BaseViewController.swift
//  App
//
//  Created by jesse.xu on 2020/3/20.
//  Copyright © 2020 fleetlabs.com. All rights reserved.
//

import UIKit
import QMUIKit

class BaseViewController: QMUICommonViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func shouldCustomizeNavigationBarTransitionIfHideable() -> Bool {
        return true
    }

}
