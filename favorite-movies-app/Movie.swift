//
//  Movie.swift
//  favorite-movies-app
//
//  Created by Israel Mesa on 3/31/20.
//  Copyright © 2020 Israel Mesa. All rights reserved.
//

import Foundation

class Movie {
    
    var id: Int
    var title: String = ""
    var year: String = ""
    var imageUrl: String = ""
    var plot: String = ""
    
    init(id: Int, title: String, year: String, imageUrl: String, plot: String = "") {
        self.id = id
        self.title = title
        self.year = year
        self.imageUrl = imageUrl
        self.plot = plot
    }
}
