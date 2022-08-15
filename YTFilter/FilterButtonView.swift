//
//  FilterButtonView.swift
//  YTFilter
//
//  Created by Viktor Mauzer on 15.08.2022..
//

import SwiftUI

struct FilterButtonView: View {
    
    var text: String
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(text)
                .padding(.horizontal)
                .padding(.vertical, 6)
                .background(.tertiary)
                .foregroundColor(.primary)
                .cornerRadius(30)
                .overlay(RoundedRectangle(cornerRadius: 30).strokeBorder(.primary, lineWidth: 1))
        }
        .buttonStyle(.plain)
    }
}

struct FilterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FilterButtonView(text: "All", action: {})
    }
}
