//
//  HomeSceneDIContainer.swift
//  iOS-Architecture
//
//  Created by jesse.xu on 2020/3/25.
//  Copyright © 2020 fleetlabs.com. All rights reserved.
//

import UIKit

final class HomeSceneDIContainer {
    
    // MARK: - Home
    func makeHomeViewController() -> UIViewController {
        return HomeViewController.create(with: makeHomeViewModel())
    }
    
    func makeHomeViewModel() -> HomeViewModel {
        return DefaultHomeViewModel()
    }

}
