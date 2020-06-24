//
//  HomeView.swift
//  WPCollections
//
//  Created by Fabian Flores on 6/22/20.
//

import SwiftUI
import ModalView

struct HomeView: View {
    var body: some View {
        ModalPresenter {
            GeometryReader { geometry in
                NavigationView {
                    List(1..<11) { item in
                        HStack {
                            Text("\(item)")
                            Text("Hello")
                            Text("Good bye").foregroundColor(.blue)
                        }
                    }.navigationTitle("Collections")
                }
                ModalLink(destination: MyModalView.init(dismiss:)) {
                    Image(systemName: "list.bullet")
                        .scaleEffect(1.3, anchor: .center)
                        .padding(EdgeInsets.init(top: 17.0, leading: 15.0, bottom: 17.0, trailing: 15.0))
                        .foregroundColor(.white)
                }
                .background(Color.blue)
                .cornerRadius(30)
                .position(x: 40.0, y: geometry.size.height * 0.97)
            }
        }
    }
}

struct MyModalView: View {
    var dismiss: () -> ()
    var body: some View {
        NavigationView {
            LibraryView()
                .navigationTitle("Library")
                .navigationBarItems(
                    trailing: Button(
                        action: dismiss,
                        label: {
                            Image(systemName: "xmark")
                                .padding(10)
                                .cornerRadius(20.0)
                                .foregroundColor(.black)
                                .background(Color(red:0.835, green: 0.851, blue: 0.878, opacity: 1.000))
                        }
                    ).cornerRadius(20)
                )
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
