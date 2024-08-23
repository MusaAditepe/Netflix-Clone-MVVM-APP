//
//  Movie.swift
//  Netflix-Clone-MVVM-APP
//
//  Created by Musa Adıtepe on 23.08.2024.
//

import Foundation
struct TrendingMovieResponse: Codable {
    let results: [Movie]
}

struct Movie: Codable {
    let id: Int
    let media_type: String?
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
}
