//
//  NewModalView.swift
//  WPCollections
//
//  Created by Fabian Flores on 10/9/20.
//

import SwiftUI

struct NewModalView<Content: View>: View {
    public var title: String
    public var view: Content
    public var dismiss: () -> ()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0.949, green: 0.949, blue: 0.953, opacity: 1.0).edgesIgnoringSafeArea(.all)
                view
                    .navigationTitle(title)
                    .navigationBarItems(
                        trailing: Button(
                            action: dismiss,
                            label: {
                                Image(systemName: "xmark")
                                    .padding(10)
                                    .cornerRadius(20.0)
                                    .foregroundColor(.black)
                                    .background(Color(red: 0.949, green: 0.949, blue: 0.953, opacity: 1.0))
                            }
                        )
                        .cornerRadius(20)
                        .shadow(color: Color.secondary.opacity(0.6), radius: 1)
                    )
            }
        }
    }
}

struct NewModalView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
