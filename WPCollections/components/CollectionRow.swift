//
//  CollectionRow.swift
//  WPCollections
//
//  Created by Fabian Flores on 10/10/20.
//

import SwiftUI
import Foundation

struct CollectionRow: View & Hashable {
    public var id = UUID()
    public var collection: Collection
    
    static func == (lhs: CollectionRow, rhs: CollectionRow) -> Bool {
        return lhs.id == rhs.id && lhs.collection == rhs.collection
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(collection)
    }
    
    var body: some View {
        HStack {
            Text("\(collection.name)")
                .font(.title)
        }
//        .overlay(
//            RoundedRectangle(cornerRadius: 10)
//                .stroke(Color.black, lineWidth: 2)
//        )
    }
}

struct CollectionCellView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionRow(collection: Collection(name: "Collection 1"))
    }
}
