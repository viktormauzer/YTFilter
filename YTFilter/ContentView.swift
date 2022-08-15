//
//  ContentView.swift
//  YTFilter
//
//  Created by Viktor Mauzer on 15.08.2022..
//

import SwiftUI

struct ContentView: View {
    
    let items: [ImageItem] = ImageItem.mockData()
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<6, id: \.self) { filterItem in
                            FilterButtonView(text: "Country name \(filterItem)") {
                                print(filterItem)
                            }
                        }
                    }
                }
                .padding(.horizontal)
                
                List(items) { item in
                    NavigationLink {
                        ImageDetailView(item: item)
                    } label: {
                        ImageListItem(item: item)
                    }
                }
                .listStyle(.plain)
            }
            .navigationTitle("Images")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
