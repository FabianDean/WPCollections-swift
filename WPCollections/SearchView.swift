//
//  LibraryView.swift
//  WPCollections
//
//  Created by Fabian Flores on 6/22/20.
//

import SwiftUI

struct SearchView: View {
    @State var query: String = ""
    @State var text: String = "Search for your favorite themes and plugins"
    
    func updateText() -> Void {
        self.text = self.query
    }
    
    var body: some View {
        VStack {
            SearchBar(placeholder: "Search", text: $query, action: updateText)
            HStack {
                VStack {
                    Text(text)
                    Spacer()
                }
                Spacer()
            }
                .background(Color.clear.contentShape(Rectangle()))
                .onTapGesture {
                    UIApplication.shared.endEditing()
                }
        }
    }
}

#if DEBUG
struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
#endif
