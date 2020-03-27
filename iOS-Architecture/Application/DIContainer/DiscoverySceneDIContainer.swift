//
//  DiscoverySceneDIContainer.swift
//  iOS-Architecture
//
//  Created by jesse.xu on 2020/3/27.
//  Copyright © 2020 fleetlabs.com. All rights reserved.
//

import UIKit

final class DiscoverySceneDIContainer {
    
    // MARK: - Discovery
    func makeDiscoveryViewController() -> UIViewController {
        return DiscoveryViewController.create(with: makeDiscoveryViewModel())
    }
    
    func makeDiscoveryViewModel() -> DiscoveryViewModel {
        return DefaultDiscoveryViewModel()
    }

}
