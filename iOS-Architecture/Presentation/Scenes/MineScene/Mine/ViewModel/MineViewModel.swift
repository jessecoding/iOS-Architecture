//
//  MineViewModel.swift
//  iOS-Architecture
//
//  Created by jesse.xu on 2020/3/27.
//  Copyright (c) 2020 All rights reserved.
//

import Foundation

protocol MineViewModelInput {
    func viewDidLoad()
}

protocol MineViewModelOutput {
    
}

protocol MineViewModel: MineViewModelInput, MineViewModelOutput { }

class DefaultMineViewModel: MineViewModel {
    
    // MARK: - OUTPUT

}

// MARK: - INPUT. View event methods
extension DefaultMineViewModel {
    func viewDidLoad() { }
}
