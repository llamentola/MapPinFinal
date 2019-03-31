//
//  ViewController.swift
//  MapPin
//
//  Created by Edna Dumas on 3/28/19.
//  Copyright © 2019 Edna Dumas. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let currentBundle : String =
            Bundle.main.object(forInfoDictionaryKey: "CFBundleIdentifier") as! String; print(currentBundle)
        
        mapView.delegate = self
        //if currentBundle.hasSuffix("MapPinSatellite")
       // {
        mapView.mapType = MKMapType.satellite
        //}
        
        let centerPoint = CLLocationCoordinate2D(latitude: 52.011937, longitude: -3.713379)
        let coordinateSpan = MKCoordinateSpan(latitudeDelta: 3.5, longitudeDelta: 3.5)
        let coordinateRegion = MKCoordinateRegion(center: centerPoint, span: coordinateSpan)
        
        mapView.setRegion(coordinateRegion, animated: false)
        mapView.regionThatFits(coordinateRegion)
        
        let annotation1 = MyPin(title: "Swansea Bay",
                subtitle: "Beautiful Beaches",
                coordinate: CLLocationCoordinate2DMake(51.587736,-3.90152))
        
        let annotation2 = MyPin(title: "Menai Bridge",
                subtitle: "Fantastic Engineering",
                coordinate: CLLocationCoordinate2DMake(53.220527,-4.163561))
        
        let annotation3 = MyPin(title: "Parc Y Scarlets",
                subtitle: "Oh Dear",
                coordinate: CLLocationCoordinate2DMake(51.678809,-4.127469))
        
        let annotation4 = MyPin(title: "Castell Coch",
                subtitle: "A Fairytale Castle",
                coordinate: CLLocationCoordinate2DMake(51.535819,-3.2547))
        
        let annotation5 = MyPin(title: "Arthur's Stone",
                subtitle: "Rock Of Legend",
                coordinate: CLLocationCoordinate2DMake(51.593735,-4.179525))
        
        mapView.addAnnotation(annotation1)
        mapView.addAnnotation(annotation2)
        mapView.addAnnotation(annotation3)
        mapView.addAnnotation(annotation4)
        mapView.addAnnotation(annotation5)

        
    }


}

