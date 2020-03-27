//
//  StudySceneDIContainer.swift
//  iOS-Architecture
//
//  Created by jesse.xu on 2020/3/27.
//  Copyright © 2020 fleetlabs.com. All rights reserved.
//

import UIKit

final class StudySceneDIContainer {
    
    // MARK: - Study
    func makeStudyViewController() -> UIViewController {
        return StudyViewController.create(with: makeStudyViewModel())
    }
    
    func makeStudyViewModel() -> StudyViewModel {
        return DefaultStudyViewModel()
    }

}
