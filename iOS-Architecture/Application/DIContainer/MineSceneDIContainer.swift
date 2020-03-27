//
//  MineSceneDIContainer.swift
//  iOS-Architecture
//
//  Created by jesse.xu on 2020/3/27.
//  Copyright © 2020 fleetlabs.com. All rights reserved.
//

import UIKit

final class MineSceneDIContainer {
    
    // MARK: - Mine
    func makeMineViewController() -> UIViewController {
        return MineViewController.create(with: makeMineViewModel())
    }
    
    func makeMineViewModel() -> MineViewModel {
        return DefaultMineViewModel()
    }

}

