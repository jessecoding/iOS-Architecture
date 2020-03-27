//
//  StudyViewController.swift
//  iOS-Architecture
//
//  Created by jesse.xu on 2020/3/27.
//  Copyright (c) 2020 All rights reserved.
//

import UIKit

class StudyViewController: BaseViewController {
    
    var viewModel: StudyViewModel!
    
    class func create(with viewModel: StudyViewModel) -> StudyViewController {
        let vc = StudyViewController()
        vc.viewModel = viewModel
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bind(to: viewModel)
        viewModel.viewDidLoad()
    }
    
    private func bind(to viewModel: StudyViewModel) {

    }
}
