//
//  MovieConstracts.swift
//  Netflix-Clone-MVVM-APP
//
//  Created by Musa Adıtepe on 23.08.2024.
//

import Foundation

protocol MovieListViewModelProtocol {
    var delegate:MovieListViewModelDelegate? {get set}
    func load()
    func loadTopMovie()
}
enum MovieListViewModelOutput {
    case showMovie([Movie])
    case error(String)
}
protocol MovieListViewModelDelegate {
    func handleOutput(_ outPut: MovieListViewModelOutput)
}
