//
//  ContentView.swift
//  WPCollections
//
//  Created by Fabian Flores on 6/22/20.
//

import SwiftUI
import ModalView

struct WPCollectionsApp: View {
    var body: some View {
        NavigationView {
        ModalPresenter {
            HomeView()
        }
        }
    }
}

struct WPCollectionsApp_Previews: PreviewProvider {
    static var previews: some View {
        WPCollectionsApp()
        
    }
}
