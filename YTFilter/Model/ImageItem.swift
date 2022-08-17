//
//  VideoItem.swift
//  YTFilter
//
//  Created by Viktor Mauzer on 15.08.2022..
//

import Foundation

struct ImageItem: Identifiable {
    var id: UUID
    var title: String
    var uploaderName: String
    var viewCount: Int
    var uploaded: String
    var thumbnail: String
    var category: String
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
                category: "Scotland"),
            ImageItem(
                id: UUID(),
                title: "Kilchurn Castle, Lochawe, Dalmally, Scotland, UK",
                uploaderName: "Connor Mollison",
                viewCount: 2292052,
                uploaded: "May 14, 2020",
                thumbnail: "scotland-kilchurn-castle",
                category: "Scotland"),
            ImageItem(
                id: UUID(),
                title: "Glenfinnan Viaduct, Glenfinnan, United Kingdom",
                uploaderName: "Jack Anstey",
                viewCount: 26276434,
                uploaded: "September 19, 2017",
                thumbnail: "glanfinnan-viaduct",
                category: "Scotland"),
            ImageItem(
                id: UUID(),
                title: "Dean Village, Edinburgh, Scotland",
                uploaderName: "Clark Van Der Beken",
                viewCount: 1400142,
                uploaded: "August 5, 2019",
                thumbnail: "dean-village-edinburgh",
                category: "Scotland"),
            ImageItem(
                id: UUID(),
                title: "The mountains of Skye - view of Old Man of Storr",
                uploaderName: "Reuben Teo",
                viewCount: 5836956,
                uploaded: "January 5, 2019",
                thumbnail: "old-man-of-storr",
                category: "Scotland"),
            ImageItem(
                id: UUID(),
                title: "Tokyo, Japan",
                uploaderName: "Clay Banks",
                viewCount: 47226460,
                uploaded: "December 3, 2016",
                thumbnail: "tokyo",
                category: "Japan"),
            ImageItem(
                id: UUID(),
                title: "Hakone, Japan",
                uploaderName: "Tianshu Liu",
                viewCount: 16057680,
                uploaded: "April 19, 2017",
                thumbnail: "hakone",
                category: "Japan"),
            ImageItem(
                id: UUID(),
                title: "Shibuya, Japan",
                uploaderName: "Jezael Melgoza",
                viewCount: 7980584,
                uploaded: "November 12, 2018",
                thumbnail: "shibuya",
                category: "Japan"),
            ImageItem(
                id: UUID(),
                title: "Portage, Alaska - USA",
                uploaderName: "McKayla Crump",
                viewCount: 3342373,
                uploaded: "May 2, 2018",
                thumbnail: "portage",
                category: "Alaska"),
            ImageItem(
                id: UUID(),
                title: "Juneau, Alaska - USA",
                uploaderName: "Kayti Coonjohn",
                viewCount: 121634,
                uploaded: "November 27, 2019",
                thumbnail: "juneau",
                category: "Alaska"),
            ImageItem(
                id: UUID(),
                title: "Gun Lake, Fiordland National Park, New Zeland",
                uploaderName: "Colin Watts",
                viewCount: 139347,
                uploaded: "June 1, 2020",
                thumbnail: "gun-lake",
                category: "New Zeland"),
            ImageItem(
                id: UUID(),
                title: "Lake Tekapo, New Zealand",
                uploaderName: "Tobias Keller",
                viewCount: 20542929,
                uploaded: "June 4, 2016",
                thumbnail: "lake-tekapo",
                category: "New Zeland"),
            ImageItem(
                id: UUID(),
                title: "Aoraki/Mount Cook National Park, New Zealand",
                uploaderName: "Kerensa Pickett",
                viewCount: 3093858,
                uploaded: "November 4, 2018",
                thumbnail: "aoraki",
                category: "New Zeland"),
        ]
    }
}
