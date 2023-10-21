//
//  Building.swift
//  MapApp
//
//  Created by Guest User on 12/10/2023.
//

import Foundation
import MapKit

struct Building {
    var symbol: String
    var name: String
    var photo: String
    var address: String
    var description: String
    var wifi: Bool
    var handycap: Handycap
    var shape: MKPolygon
    var type: String
    var theme: Theme
    var favourite: Bool
}


extension Building {
    static let sampleData: [Building] =
    [
        Building(symbol: "D-15",
                 name: "Cyfronet AGH",
                 photo: "D15",
                 address: "Nawojki 11",
                 description: "opis 1",
                 wifi: true,
                 handycap: Handycap.yes,
                 shape: MKPolygon(coordinates: [
                    CLLocationCoordinate2DMake(19.9094277,
                                               50.0685726),
                    CLLocationCoordinate2DMake(19.9094741,
                                               50.0687031),
                    CLLocationCoordinate2DMake(19.9087635,
                                               50.0688073),
                    CLLocationCoordinate2DMake(19.908717,
                                               50.0686768),
                    CLLocationCoordinate2DMake(19.9092746,
                                               50.068595),
                    CLLocationCoordinate2DMake(19.9092791,
                                               50.0685791),
                    CLLocationCoordinate2DMake( 19.9093097,
                                                50.0685741),
                    CLLocationCoordinate2DMake(19.9093272,
                                               50.0685873),
                    CLLocationCoordinate2DMake(19.9094277,
                                               50.0685726)
                 ], count: 9),
                 type: "university",
                 theme: .yellow,
                 favourite: false
                ),
        Building(symbol: "D-11",
                 name: "Budynek D-11",
                 photo: "D11",
                 address: "Kawiory 26a",
                 description: "opis 2",
                 wifi: false,
                 handycap: Handycap.no,
                 shape: MKPolygon(coordinates: [
                    CLLocationCoordinate2DMake(19.9120006,
                                               50.0672801),
                    CLLocationCoordinate2DMake(19.9127486,
                                               50.067163),
                    CLLocationCoordinate2DMake(19.912784,
                                               50.0672586),
                    CLLocationCoordinate2DMake(19.9127947,
                                               50.0672876),
                    CLLocationCoordinate2DMake(19.9120505,
                                               50.0674041),
                    CLLocationCoordinate2DMake(19.9120225,
                                               50.0673354),
                    CLLocationCoordinate2DMake(19.9120006,
                                               50.0672801)
                 ], count: 7),
                 type: "university",
                 theme: .orange,
                 favourite: true
                ),
        Building(symbol: "P-A3-A4",
                 name: "Budynek P-A3-A4",
                 photo: "PA3A4",
                 address: "Aleja Adama Mickiewicza",
                 description: "opis 3",
                 wifi: false,
                 handycap: Handycap.limited,
                 shape: MKPolygon(coordinates: [
                    CLLocationCoordinate2DMake(19.9201671,
                                               50.0655267),
                    CLLocationCoordinate2DMake(19.920114,
                                               50.0654024),
                    CLLocationCoordinate2DMake(19.9204955,
                                               50.0653441),
                    CLLocationCoordinate2DMake(19.9206922,
                                               50.0653145),
                    CLLocationCoordinate2DMake(19.9207381,
                                               50.0654418),
                    CLLocationCoordinate2DMake(19.9205403,
                                               50.0654712),
                    CLLocationCoordinate2DMake(19.9201671,
                                               50.0655267)
                 ], count: 7),
                 type: "",
                 theme: .purple,
                 favourite: false
                )
    ]
}

enum Handycap {
    case yes
    case no
    case limited
}
