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
        GeometryReader { geometry in
            ZStack {
                ScrollView {
                    VStack {
                        Rectangle().frame(height: 20).foregroundColor(Color.clear)
                        ForEach(0..<10) { item in
                            NavigationLink(destination: CollectionView(item: "\(item+1)")) {
                                HStack {
                                    Spacer()
                                    Text("\(item+1)")
                                        .font(.title)
                                    Spacer()
                                }
                            }
                            .padding()
                        }
                    }
                }
                VStack {
                    Spacer()
                    HStack {
                        ModalLink(destination: MyModalView.init(dismiss:)) {
                            Image(systemName: "list.bullet")
                                .scaleEffect(1.3, anchor: .center)
                                .padding(EdgeInsets.init(top: 17.0, leading: 15.0, bottom: 17.0, trailing: 15.0))
                                .foregroundColor(.white)
                        }
                        .background(Color.blue)
                        .cornerRadius(30)
                        .padding()
                        Spacer()
                    }
                }
            }
        }.navigationTitle("Collections")
    }
}

struct MyModalView: View {
    var dismiss: () -> ()
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0.949, green: 0.949, blue: 0.953, opacity: 1.0).edgesIgnoringSafeArea(.all)
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

#if DEBUG
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
