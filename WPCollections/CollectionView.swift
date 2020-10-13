//
//  CollectionView.swift
//  WPCollections
//
//  Created by Fabian Flores on 6/23/20.
//

import SwiftUI

struct CollectionView: View {
    public var item: String
    @State var showAlert: Bool = false
    
    var body: some View {
        NavigationView {
        VStack {
            Text("\(item)")
                .font(.largeTitle)
        }}
            .navigationTitle("Collection")
            .navigationBarItems(trailing: Button(
                                    action: {
                                        self.showAlert = true
                                    }, label: {
                                        HStack {
                                            Image(systemName: "plus")
                                                .scaleEffect(1.2, anchor: .center)
                                            Text("Add")
                                        }
                                    }))
            .alert(isPresented: $showAlert, content: {
                Alert(title: Text("Collection"), message: Text("\(self.item)"))
            })
    }
}

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView(item: "24", showAlert: true)
    }
}
