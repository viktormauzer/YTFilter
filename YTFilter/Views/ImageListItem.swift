//
//  ImageListItem.swift
//  YTFilter
//
//  Created by Viktor Mauzer on 15.08.2022..
//

import SwiftUI

struct ImageListItem: View {
    @State private var isTapped = false
    
    var item: ImageItem
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(item.thumbnail)
                .resizable()
                .scaledToFill()
                .clipped()
                .cornerRadius(12)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(item.title)
                Text("Uploaded by: \(item.uploaderName)")
                    .font(.caption)
                    .foregroundColor(.secondary)
                Text("\(item.uploaded) - \(item.viewCount) views")
                    .font(.caption)
            }
            .padding(.top, 4)
        }
        .padding()
        .background(Color(UIColor.secondarySystemBackground))
        .cornerRadius(20)
        .padding(.vertical, 6)
        .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 0)
    }
}

struct ImageListItem_Previews: PreviewProvider {
    static var previews: some View {
        ImageListItem(item: ImageItem.mockData()[0])
    }
}
