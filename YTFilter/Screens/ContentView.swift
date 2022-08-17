//
//  ContentView.swift
//  YTFilter
//
//  Created by Viktor Mauzer on 15.08.2022..
//

import SwiftUI

struct ContentView: View {
    
    let items: [ImageItem] = ImageItem.mockData()
    
    var filteredItems: [ImageItem] {
        var buffer: [ImageItem] = []
        buffer = items.filter({ $0.category.lowercased().capitalized == selectedCategory.lowercased().capitalized })
        return selectedCategory == "All" ? items.shuffled() : buffer.shuffled()
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
                            withAnimation {
                                selectedCategory = "All"
                            }
                        }
                        ForEach(categories, id: \.self) { category in
                            FilterButtonView(text: category, isSelected: selectedCategory == category) {
                                withAnimation() {
                                    selectedCategory = category
                                }
                            }
                        }
                    }
                }
                .padding(.horizontal)
                
                List(filteredItems) { item in
                    ZStack {
                        NavigationLink {
                            ImageDetailView(item: item)
                        } label: {
                            // no label
                        }
                        .opacity(0)
                        
                        ImageListItem(item: item)
                    }
                    .listRowSeparator(.hidden)
                    .listRowBackground(Color(UIColor.systemBackground))
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
