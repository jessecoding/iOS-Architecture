//
//  AppDIContainer.swift
//  iOS-Architecture
//
//  Created by jesse.xu on 2020/3/25.
//  Copyright © 2020 fleetlabs.com. All rights reserved.
//

import Foundation

final class AppDIContainer {

    
    // MARK: - DIContainers of scenes
    func makeHomeSceneDIContainer() -> HomeSceneDIContainer {
//        let dependencies = MoviesSceneDIContainer.Dependencies(apiDataTransferService: apiDataTransferService,
//                                                               imageDataTransferService: imageDataTransferService)
        return HomeSceneDIContainer()
    }
}
