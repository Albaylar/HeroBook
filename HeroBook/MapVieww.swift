//
//  MapVieww.swift
//  HeroBook
//
//  Created by Furkan Deniz Albaylar on 13.08.2022.
//

import SwiftUI
import MapKit

struct MapVieww: View {
    @State private var region = MKCoordinateRegion.init(center: HeroModelList[0].Location, span: MKCoordinateSpan.init(latitudeDelta: 0.5, longitudeDelta: 0.5))
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapVieww_Previews: PreviewProvider {
    static var previews: some View {
        MapVieww()
    }
}
