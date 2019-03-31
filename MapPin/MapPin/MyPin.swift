//
//  MyPin.swift
//  MapPin
//
//  Created by Edna Dumas on 3/28/19.
//  Copyright © 2019 Edna Dumas. All rights reserved.
//

import UIKit
import MapKit

class MyPin: MKPointAnnotation {
    
    init(title : String, subtitle : String, coordinate : CLLocationCoordinate2D) {
        super.init()
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
    }
}
