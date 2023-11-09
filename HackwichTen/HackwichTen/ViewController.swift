//
//  ViewController.swift
//  HackwichTen
//
//  Created by Tani Umetsu on 11/9/23.
//

import UIKit
import MapKit
import CoreLocation


class ViewController: UIViewController {
    
    let initialLocation = CLLocation(latitude: 21.361888, longitude:
         -158.056022)
    let regionRadius = 10000
    
    
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        centerMapOnLocation(location: initialLocation)
       
        let restaurantOne = Restaurant(title: "American", type: "Kalapawai",
                       coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude:
                       -158.080098))
                
                mapView.addAnnotation(restaurantOne)
        let restaurantTwo = secondRestaurant(title: "Hawaii", type: "Zippys",
                       coordinate: CLLocationCoordinate2D(latitude: 21.334527030474717, longitude:
                       -158.08209235764727))
                
                mapView.addAnnotation(restaurantTwo)
    
        
    }

    
    func centerMapOnLocation(location:CLLocation)
           {
               let coordinateRegion = MKCoordinateRegion(center: location.coordinate,

               latitudinalMeters: CLLocationDistance(regionRadius),
               longitudinalMeters: CLLocationDistance(regionRadius))
               mapView.setRegion(coordinateRegion, animated: true)

           }


}

