//
//  File.swift
//  iOS-Architecture
//
//  Created by jesse.xu on 2020/3/25.
//  Copyright © 2020 fleetlabs.com. All rights reserved.
//

import Foundation

protocol HomeViewModelInput {
    func viewDidLoad()
//    func didLoadNextPage()
//    func didSearch(query: String)
//    func didCancelSearch()
//    func showQueriesSuggestions()
//    func closeQueriesSuggestions()
//    func didSelect(item: MoviesListCellItemViewModel)
}

protocol HomeViewModelOutput {
//    var route: Observable<MoviesListViewModelRoute> { get }
//    var items: Observable<[MoviesListCellItemViewModel]> { get }
//    var loadingType: Observable<MoviesListViewModelLoading> { get }
//    var query: Observable<String> { get }
//    var error: Observable<String> { get }
//    var isEmpty: Bool { get }
//    var screenTitle: String { get }
//    var emptyDataTitle: String { get }
//    var errorTitle: String { get }
//    var searchBarPlaceholder: String { get }
}

protocol HomeViewModel: HomeViewModelInput, HomeViewModelOutput {}

final class DefaultHomeViewModel: HomeViewModel {
    
}

// MARK: - INPUT. View event methods
extension DefaultHomeViewModel {
    func viewDidLoad() {
        
    }
}
