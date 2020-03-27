//
//  MineViewController.swift
//  iOS-Architecture
//
//  Created by jesse.xu on 2020/3/27.
//  Copyright (c) 2020 All rights reserved.
//

import UIKit

class MineViewController: BaseViewController {
    
    var viewModel: MineViewModel!
    
    class func create(with viewModel: MineViewModel) -> MineViewController {
        let vc = MineViewController()
        vc.viewModel = viewModel
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bind(to: viewModel)
        viewModel.viewDidLoad()
    }
    
    private func bind(to viewModel: MineViewModel) {

    }
    
    override func preferredNavigationBarHidden() -> Bool {
        return true
    }
}
