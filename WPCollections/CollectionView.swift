//
//  CollectionView.swift
//  WPCollections
//
//  Created by Fabian Flores on 6/23/20.
//

import SwiftUI

struct CollectionView: View {
    public var item: String;
    var body: some View {
        VStack {
            Text("\(item)")
        }
            .navigationTitle("Collection")
            .navigationBarItems(trailing: Text("Add Item"))
    }
}

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView(item: "")
    }
}
