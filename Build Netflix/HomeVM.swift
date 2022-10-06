//
//  HomeVM.swift
//  Build Netflix
//
//  Created by Vá de Táxi on 05/10/22.
//

import Foundation

class HomeVM: ObservableObject{
    
    @Published var movies: [String: [Movie]] = [:]
    public var allCategories: [String]{
        movies.keys.map({ String($0)})
    }
    
    public func getMovie(forCat cat: String) -> [Movie]{
        return movies[cat] ?? []
    }
    
    init(){
        setupMovies()
    }
    
    func setupMovies(){
        movies["Trending Now"] = exampleMovies
    }
}
