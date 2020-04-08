//
//  MovieDataProcessor.swift
//  favorite-movies-app
//
//  Created by Israel Mesa on 4/6/20.
//  Copyright © 2020 Israel Mesa. All rights reserved.
//

import Foundation

class MovieDataProcessor {
    static func mapJsonToMovies(object: [String: AnyObject], moviesKey: String) ->
            [Movie] {
                var mappedMovies: [Movie] = []
                
                guard let movies = object[moviesKey] as? [[String: AnyObject]] else {
                    return mappedMovies
                }
                
                for movie in movies {
                    guard let id = movie["id"] as? Int,
                        let name = movie["title"] as? String,
                        let year = movie["release_date"] as? String,
                        let imageUrl = movie["poster_path"] as? String else {
                            mappedMovies.append(Movie(id: 0372784, title: "Batman Begins", year: "2005", imageUrl: "https://upload.wikimedia.org/wikipedia/en/thumb/a/af/Batman_Begins_Poster.jpg/220px-Batman_Begins_Poster.jpg"))
                            continue
                    }
                    
                    let movieClass = Movie(id: id, title: name, year: year, imageUrl: "https://image.tmdb.org/t/p/w92\(imageUrl)")
                    mappedMovies.append(movieClass)
        }
        return mappedMovies
    }
    
    static func write(movies: [Movie]) {
        //implement
    }
}
    
