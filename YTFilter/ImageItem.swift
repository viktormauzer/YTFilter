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
        ]
    }
}
