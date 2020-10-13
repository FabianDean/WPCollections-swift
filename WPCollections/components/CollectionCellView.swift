//
//  CollectionCellView.swift
//  WPCollections
//
//  Created by Fabian Flores on 10/10/20.
//

import SwiftUI

struct CollectionCellView: View {
    public var item: String
    
    var body: some View {
        LazyHStack {
            Text(item)
                .font(.title)
        }
        .frame(maxWidth: .infinity, minHeight: 60, maxHeight: 60)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.black, lineWidth: 2)
        )
    }
}

struct CollectionCellView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionCellView(item: "2")
    }
}
