//
//  DiscoveryViewModel.swift
//  iOS-Architecture
//
//  Created by jesse.xu on 2020/3/27.
//  Copyright (c) 2020 All rights reserved.
//

import Foundation

protocol DiscoveryViewModelInput {
    func viewDidLoad()
}

protocol DiscoveryViewModelOutput {
    
}

protocol DiscoveryViewModel: DiscoveryViewModelInput, DiscoveryViewModelOutput { }

class DefaultDiscoveryViewModel: DiscoveryViewModel {
    
    // MARK: - OUTPUT

}

// MARK: - INPUT. View event methods
extension DefaultDiscoveryViewModel {
    func viewDidLoad() { }
}
