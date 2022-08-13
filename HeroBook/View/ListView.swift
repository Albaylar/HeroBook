//
//  ContentView.swift
//  HeroBook
//
//  Created by Furkan Deniz Albaylar on 12.08.2022.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView{
            List(HeroModelList) { HeroModel in
                NavigationLink( destination: DetailView(Chosen: HeroModel), label: { RowView(hero: HeroModel)
            
                }).padding(.top)
            }.navigationTitle(Text(" Hero Book"))
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
    
