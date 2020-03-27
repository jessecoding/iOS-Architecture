//
//  StudyViewModel.swift
//  iOS-Architecture
//
//  Created by jesse.xu on 2020/3/27.
//  Copyright (c) 2020 All rights reserved.
//

import Foundation

protocol StudyViewModelInput {
    func viewDidLoad()
}

protocol StudyViewModelOutput {
    
}

protocol StudyViewModel: StudyViewModelInput, StudyViewModelOutput { }

class DefaultStudyViewModel: StudyViewModel {
    
    // MARK: - OUTPUT

}

// MARK: - INPUT. View event methods
extension DefaultStudyViewModel {
    func viewDidLoad() { }
}
