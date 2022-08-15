//
//  ImageDetailView.swift
//  YTFilter
//
//  Created by Viktor Mauzer on 15.08.2022..
//

import SwiftUI

struct ImageDetailView: View {
    
    var item: ImageItem
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(item.thumbnail)
                .resizable()
                .scaledToFit()
            
            photoInfoView
                .padding()
            
            Spacer()
        }
        .navigationTitle("By: \(item.uploaderName)")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    var photoInfoView: some View {
        VStack(alignment: .leading) {
            Text(item.title)
                .font(.title)
                .padding(.bottom, 10)
            
            Group {
                Text("Date: \(item.uploaded)")
                
                Text("Category: \(item.category)")
                
                Text("Views: \(item.viewCount)")
            }
            .font(.callout)
        }
    }
}

struct ImageDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ImageDetailView(item: ImageItem.mockData()[0])
        }
    }
}
