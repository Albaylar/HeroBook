//
//  MapView.swift
//  HeroBook
//
//  Created by Furkan Deniz Albaylar on 13.08.2022.
//

import SwiftUI
import MapKit

struct MapView : UIViewRepresentable {
    
    var coordinate : CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> some MKMapView {
        MKMapView(frame: .zero)
    }
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.3, longitudeDelta: 0.3)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
}
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: HeroModelList[0].Location)
    }
}
