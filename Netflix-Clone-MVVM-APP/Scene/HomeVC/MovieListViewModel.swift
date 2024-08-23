//
//  MovieListViewModel.swift
//  Netflix-Clone-MVVM-APP
//
//  Created by Musa Adıtepe on 23.08.2024.
//

import Foundation
final class MovieListViewModel: MovieListViewModelProtocol {
    var delegate: MovieListViewModelDelegate?
    var service: MovieListServiceProtocol?
    
    init(service:MovieListServiceProtocol) {
        self.service = service
    }

    func load() {
        service?.fetchMovies(onSuccess: { movie in
            self.delegate?.handleOutput(.showMovie(movie))
        }, onFailure: { error in
            self.delegate?.handleOutput(.error(error))
        })
    }
    func loadTopMovie() {
        service?.fetchTopMovies(onSuccess: { movie in
            self.delegate?.handleOutput(.showMovie(movie))
        }, omFailure: { error in
            self.delegate?.handleOutput(.error(error))
        })
    }
    private func notify(_ outPut: MovieListViewModelOutput) {
        delegate?.handleOutput(outPut)
    }
}
