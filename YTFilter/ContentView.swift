//
//  ContentView.swift
//  YTFilter
//
//  Created by Viktor Mauzer on 15.08.2022..
//

import SwiftUI

struct ContentView: View {
    
    let items: [ImageItem] = ImageItem.mockData().shuffled()
    
    var filteredItems: [ImageItem] {
        var buffer: [ImageItem] = []
        buffer = items.filter({ $0.category.lowercased().capitalized == selectedCategory.lowercased().capitalized })
        return selectedCategory == "All" ? items : buffer
    }
    
    var categories: [String] {
        var categoryStrings: [String] = []
        for item in items {
            if !categoryStrings.contains(where: { $0.lowercased().capitalized == item.category.lowercased().capitalized }) {
                categoryStrings.append(item.category)
            }
        }
        return categoryStrings
    }
    
    @State private var selectedCategory = "All"
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        FilterButtonView(text: "All", isSelected: selectedCategory == "All") {
                            selectedCategory = "All"
                        }
                        ForEach(categories, id: \.self) { category in
                            FilterButtonView(text: category, isSelected: selectedCategory == category) {
                                selectedCategory = category
                            }
                        }
                    }
                }
                .padding(.horizontal)
                
                List(filteredItems) { item in
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
