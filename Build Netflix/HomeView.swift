//
//  HomeView.swift
//  Build Netflix
//
//  Created by Vá de Táxi on 05/10/22.
//

import SwiftUI

struct HomeView: View {
    
    var vm: HomeVM = HomeVM() //viewmodel
    
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ForEach(vm.allCategories, id:\.self) { category in
                VStack {
                    HStack {
                        Text(category)
                        Spacer()
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack{
                            ForEach(vm.getMovie(forCat: category)) { movie in
                                StandardHomeMovie(movie: movie)
                                    .frame(width: 100, height: 200)
                                    .padding(.horizontal, 55)
                            }
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
