//
//  ImageListItem.swift
//  YTFilter
//
//  Created by Viktor Mauzer on 15.08.2022..
//

import SwiftUI

struct ImageListItem: View {
    
    var item: ImageItem
    
    var body: some View {
        HStack {
            Image(item.thumbnail)
                .resizable()
                .scaledToFill()
                .frame(width: 160, height: 120)
                .clipped()
            
            VStack(alignment: .leading, spacing: 4) {
                Text(item.title)
                Text("Uploaded by: \(item.uploaderName)")
                    .font(.caption)
                    .foregroundColor(.secondary)
                Text("\(item.uploaded) - \(item.viewCount) views")
                    .font(.caption)
            }
        }
    }
}

struct ImageListItem_Previews: PreviewProvider {
    static var previews: some View {
        ImageListItem(item: ImageItem.mockData()[0])
    }
}
