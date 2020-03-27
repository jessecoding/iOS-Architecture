//
//  FormViewController.swift
//  iOS-Architecture
//
//  Created by jesse.xu on 2020/3/27.
//  Copyright © 2020 fleetlabs.com. All rights reserved.
//

import Eureka
import QMUIKit

class BaseFormViewController: FormViewController, QMUINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - QMUINavigationControllerDelegate
    func shouldCustomizeNavigationBarTransitionIfHideable() -> Bool {
        return true
    }
}
