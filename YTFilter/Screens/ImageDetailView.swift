//
//  ImageDetailView.swift
//  YTFilter
//
//  Created by Viktor Mauzer on 15.08.2022..
//

import SwiftUI
import MapKit

struct ImageDetailView: View {
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 50, longitude: 50), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var item: ImageItem
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(item.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                    .padding(.horizontal)
                    .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 0)
                
                photoInfoView
                    .padding()
                
                Spacer()
            }
            .navigationTitle("By: \(item.uploaderName)")
        .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    var photoInfoView: some View {
        VStack(alignment: .leading) {
            Text(item.title)
                .font(.title).bold()
                .padding(.bottom, 6)
            
            Group {
                Text("Date: \(item.uploaded)")
                
                Text("Category: \(item.category)")
                
                Text("Views: \(item.viewCount)")
            }
            .font(.callout)
            
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.secondary)
            
            Map(coordinateRegion: $mapRegion)
                .padding(.top, 12)
                .frame(height: 220)
                .cornerRadius(10)
        }
        .padding()
        .background(Color(UIColor.secondarySystemBackground))
        .cornerRadius(20)
        .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 0)
    }
}

struct ImageDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ImageDetailView(item: ImageItem.mockData()[0])
        }
    }
}
