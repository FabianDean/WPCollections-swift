//
//  HomeView.swift
//  WPCollections
//
//  Created by Fabian Flores on 6/22/20.
//

import SwiftUI
import ModalView

struct HomeView: View {
    @Environment(\.defaultMinListRowHeight) var minRowHeight
    @State var showAlert: Bool = false
    @State var alertInput: String = ""
    
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
                
                FAB(align: ALIGNMENT.left) {
                    ModalLink(destination: {dismiss in NewModalView(title: "Search", view: SearchView(), dismiss: dismiss)}) {
                        Image(systemName: "magnifyingglass")
                            .scaleEffect(1.3, anchor: .center)
                            .padding(EdgeInsets.init(top: 17.0, leading: 15.0, bottom: 17.0, trailing: 15.0))
                            .foregroundColor(.white)
                    }
                }
                
                if self.showAlert {
                    AlertControlView(input: $alertInput, showAlert: $showAlert, title: "New Collection", message: "Choose a name for your new collection")
                }
            }
        }
        .navigationTitle("Collections")
        .navigationBarItems(trailing: Button(
                                action: {
                                    self.showAlert = true
                                }, label: {
                                    HStack {
                                        Image(systemName: "plus")
                                            .scaleEffect(1.1, anchor: .center)
                                        Text("Add Collection")
                                    }
                                }))
    }
}

#if DEBUG
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
