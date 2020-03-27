//
//  DiscoveryViewController.swift
//  iOS-Architecture
//
//  Created by jesse.xu on 2020/3/27.
//  Copyright (c) 2020 All rights reserved.
//

import UIKit

class DiscoveryViewController: BaseViewController {
    
    var viewModel: DiscoveryViewModel!
    
    class func create(with viewModel: DiscoveryViewModel) -> DiscoveryViewController {
        let vc = DiscoveryViewController()
        vc.viewModel = viewModel
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bind(to: viewModel)
        viewModel.viewDidLoad()
    }
    
    private func bind(to viewModel: DiscoveryViewModel) {

    }
}
