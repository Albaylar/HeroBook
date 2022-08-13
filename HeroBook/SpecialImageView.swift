//
//  SpecialImageView.swift
//  HeroBook
//
//  Created by Furkan Deniz Albaylar on 13.08.2022.
//

import SwiftUI

struct SpecialImageView: View {
    
    var image : Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.black,lineWidth: 5)).shadow(radius: 12)
    }
}

struct SpecialImageView_Previews: PreviewProvider {
    static var previews: some View {
        SpecialImageView(image: Image("superman"))
    }
}
