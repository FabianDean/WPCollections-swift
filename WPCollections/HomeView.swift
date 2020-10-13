//
//  HomeView.swift
//  WPCollections
//
//  Created by Fabian Flores on 6/22/20.
//

import SwiftUI

struct HomeView: View {
    var nums: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ScrollView {
                    VStack {
                        ForEach(nums, id: \.self) { num in
                            NavigationLink(destination: CollectionView(item: "\(num)")) {
                                HStack {
                                    CollectionCellView(item: "\(num)")
                                }
                            }
                            .padding()
                        }
                    }
                }
                FABView(title: "Library:", view: LibraryView(), icon: "list.bullet", align: ALIGNMENT.left)
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
