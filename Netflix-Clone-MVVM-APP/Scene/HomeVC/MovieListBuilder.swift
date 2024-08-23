//
//  MovieListBuilder.swift
//  Netflix-Clone-MVVM-APP
//
//  Created by Musa Adıtepe on 23.08.2024.
//

import Foundation
class MovieListBuilder {
    static func make() ->  HomeViewController {
        let vc = HomeViewController()
        let viewModel = MovieListViewModel(service: MovieListService())
        vc.viewModel = viewModel
        return vc
    }
}
