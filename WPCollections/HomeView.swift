//
//  HomeView.swift
//  WPCollections
//
//  Created by Fabian Flores on 6/22/20.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.defaultMinListRowHeight) var minRowHeight

    var body: some View {
        var collectionRows: [CollectionRow] = []
        
        for i in 1..<11 {
            collectionRows.append(
                CollectionRow(collection: Collection(name: "Collection \(i)"))
            )
        }
        
        return GeometryReader { geometry in
            ZStack {
                ScrollView {
                    VStack {
                        ForEach(collectionRows, id: \.self) { collectionRow in
                            NavigationLink(destination: CollectionView(item: "\(collectionRow.collection.name)")) {
                                collectionRow
                            }
                            .frame(maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                        }
                    }
                }
                .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 10))
                FAB(title: "Library", view: LibraryView(), icon: "list.bullet", align: ALIGNMENT.left)
            }
        }
        .navigationTitle("Collections")
    }
}

#if DEBUG
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
