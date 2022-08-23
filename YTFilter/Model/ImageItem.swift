//
//  VideoItem.swift
//  YTFilter
//
//  Created by Viktor Mauzer on 15.08.2022..
//

import Foundation
import CoreLocation

struct ImageItem: Identifiable {
    var id: UUID
    var title: String
    var uploaderName: String
    var viewCount: Int
    var uploaded: String
    var thumbnail: String
    var category: String
    var latitude: Double
    var longitude: Double
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}


extension ImageItem {
    static func mockData() -> [ImageItem] {
        [
            ImageItem(
                id: UUID(),
                title: "Quiraing - Isle of Skye, Isle of Skye, Scotland",
                uploaderName: "Bjorn Snelders",
                viewCount: 2896743,
                uploaded: "March 5 2019",
                thumbnail: "quiraing",
                category: "Scotland",
                latitude: 57.644207350443835 ,
                longitude: -6.265278016566887),
            ImageItem(
                id: UUID(),
                title: "Kilchurn Castle, Lochawe, Dalmally, Scotland, UK",
                uploaderName: "Connor Mollison",
                viewCount: 2292052,
                uploaded: "May 14, 2020",
                thumbnail: "scotland-kilchurn-castle",
                category: "Scotland",
                latitude: 56.403779499159874,
                longitude: -5.0272107080440005),
            ImageItem(
                id: UUID(),
                title: "Glenfinnan Viaduct, Glenfinnan, United Kingdom",
                uploaderName: "Jack Anstey",
                viewCount: 26276434,
                uploaded: "September 19, 2017",
                thumbnail: "glanfinnan-viaduct",
                category: "Scotland",
                latitude: 56.876340298805964,
                longitude: -5.431726714512895),
            ImageItem(
                id: UUID(),
                title: "Dean Village, Edinburgh, Scotland",
                uploaderName: "Clark Van Der Beken",
                viewCount: 1400142,
                uploaded: "August 5, 2019",
                thumbnail: "dean-village-edinburgh",
                category: "Scotland",
                latitude: 55.952411632071474,
                longitude: -3.218188172205605),
            ImageItem(
                id: UUID(),
                title: "The mountains of Skye - view of Old Man of Storr",
                uploaderName: "Reuben Teo",
                viewCount: 5836956,
                uploaded: "January 5, 2019",
                thumbnail: "old-man-of-storr",
                category: "Scotland",
                latitude: 57.28671804669278,
                longitude: -6.219482935816072),
            ImageItem(
                id: UUID(),
                title: "Tokyo, Japan",
                uploaderName: "Clay Banks",
                viewCount: 47226460,
                uploaded: "December 3, 2016",
                thumbnail: "tokyo",
                category: "Japan",
                latitude: 35.92775590559585,
                longitude: 139.5606921660363),
            ImageItem(
                id: UUID(),
                title: "Hakone, Japan",
                uploaderName: "Tianshu Liu",
                viewCount: 16057680,
                uploaded: "April 19, 2017",
                thumbnail: "hakone",
                category: "Japan",
                latitude: 35.23841788276738,
                longitude: 139.02872922647214),
            ImageItem(
                id: UUID(),
                title: "Shibuya, Japan",
                uploaderName: "Jezael Melgoza",
                viewCount: 7980584,
                uploaded: "November 12, 2018",
                thumbnail: "shibuya",
                category: "Japan",
                latitude: 35.671114188797446,
                longitude: 139.69381753730028),
            ImageItem(
                id: UUID(),
                title: "Portage, Alaska - USA",
                uploaderName: "McKayla Crump",
                viewCount: 3342373,
                uploaded: "May 2, 2018",
                thumbnail: "portage",
                category: "Alaska",
                latitude: 60.84123555212239,
                longitude: -148.98300706143564),
            ImageItem(
                id: UUID(),
                title: "Juneau, Alaska - USA",
                uploaderName: "Kayti Coonjohn",
                viewCount: 121634,
                uploaded: "November 27, 2019",
                thumbnail: "juneau",
                category: "Alaska",
                latitude: 58.31478020608059,
                longitude: -134.4091923673069),
            ImageItem(
                id: UUID(),
                title: "Gun Lake, Fiordland National Park, New Zeland",
                uploaderName: "Colin Watts",
                viewCount: 139347,
                uploaded: "June 1, 2020",
                thumbnail: "gun-lake",
                category: "New Zeland",
                latitude: -45.46277100640923,
                longitude: 167.54217011253328),
            ImageItem(
                id: UUID(),
                title: "Lake Tekapo, New Zealand",
                uploaderName: "Tobias Keller",
                viewCount: 20542929,
                uploaded: "June 4, 2016",
                thumbnail: "lake-tekapo",
                category: "New Zeland",
                latitude: -44.00145541280837,
                longitude: 170.46456990695555),
            ImageItem(
                id: UUID(),
                title: "Aoraki/Mount Cook National Park, New Zealand",
                uploaderName: "Kerensa Pickett",
                viewCount: 3093858,
                uploaded: "November 4, 2018",
                thumbnail: "aoraki",
                category: "New Zeland",
                latitude: -43.59430401859329,
                longitude: 170.26236631249117),
        ]
    }
}
