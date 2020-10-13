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
        VStack(alignment: .leading) {
                Text("\(item)")
                    .font(.title)
                Spacer()
        }
            .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 10))
            .navigationTitle("Collection")
            .navigationBarItems(trailing: Button(
                                    action: {
                                        self.showAlert = true
                                    }, label: {
                                        HStack {
                                            Image(systemName: "plus")
                                                .scaleEffect(1.1, anchor: .center)
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
