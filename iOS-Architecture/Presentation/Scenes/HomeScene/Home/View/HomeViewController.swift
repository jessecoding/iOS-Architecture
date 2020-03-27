//
//  HomeViewController.swift
//  iOS-Architecture
//
//  Created by jesse.xu on 2020/3/25.
//  Copyright © 2020 fleetlabs.com. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    private(set) var viewModel: HomeViewModel!
    
    static func create(with viewModel: HomeViewModel) -> HomeViewController {
        let view = HomeViewController()
        view.viewModel = viewModel
        return view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bind(to: viewModel)
        viewModel.viewDidLoad()
    }
    

    private func bind(to viewModel: HomeViewModel) {

    }

}
