//
//  Movie.swift
//  My Favorites
//
//  Created by Letícia Santos on 01/02/21.
//

import Foundation

class Movie {
    var movieName: String
    var movieImage: String
    var isFavorite: Bool
    
    init(movieName: String, movieImage: String, isFavorite: Bool) {
        self.movieName = movieName
        self.movieImage = movieImage
        self.isFavorite = isFavorite
    }
}
