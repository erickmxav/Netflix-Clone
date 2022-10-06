//
//  StandardHomeMovie.swift
//  Build Netflix
//
//  Created by Vá de Táxi on 05/10/22.
//

import SwiftUI
import KingfisherSwiftUI

struct StandardHomeMovie: View {
    var movie: Movie
    
    var body: some View {
        
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
            .frame(width: 200, height: 300)
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: exampleMovie1)
    }
}
