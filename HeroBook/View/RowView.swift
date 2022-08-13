//
//  RowView.swift
//  HeroBook
//
//  Created by Furkan Deniz Albaylar on 13.08.2022.
//

import SwiftUI

struct RowView: View {
    var hero : HeroModel
    var body: some View {
        HStack{
            VStack{
                Text(hero.name).font(.title).bold()
            Text(hero.realname)
            }
            Spacer()
            Image(hero.Imagename).resizable().aspectRatio(contentMode: .fit).frame(width: UIScreen.main.bounds.width*0.3, height: UIScreen.main.bounds.height*0.1, alignment: .trailing)
            
        }
        .padding()
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(hero: Batman)
    }
}
