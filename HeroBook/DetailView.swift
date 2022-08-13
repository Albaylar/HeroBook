//
//  DetailView.swift
//  HeroBook
//
//  Created by Furkan Deniz Albaylar on 13.08.2022.
//

import SwiftUI

struct DetailView: View {
    var Chosen : HeroModel
    var body: some View {
        NavigationView{
        VStack{
            MapView(coordinate: Chosen.Location).frame(height: UIScreen.main.bounds.height*0.3)
                .edgesIgnoringSafeArea(.all)
            SpecialImageView(image: Image(Chosen.Imagename)).frame(width: UIScreen.main.bounds.width*0.8, height: UIScreen.main.bounds.height*0.25, alignment: .center)
                .offset(y:UIScreen.main.bounds.height * -0.25).padding(.bottom, UIScreen.main.bounds.height * -0.4)
            VStack{
                HStack{
                Text(Chosen.name)
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.blue)
                    Spacer()
                Text(Chosen.realname)
                        .font(.largeTitle)
                        .italic()
                }
                .padding()
                
                HStack{
                    Text(Chosen.city)
                        .font(.headline)
                        .foregroundStyle(.black
                )
                    Spacer()
                    
                    Text(Chosen.job)
                        .font(.headline)
                        .foregroundStyle(.black)
                }
                .padding([.leading, .bottom, .trailing])
                

            }
            .offset(y: UIScreen.main.bounds.height * -0.01)
            Spacer()
        }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(Chosen: Batman)
    }
}
