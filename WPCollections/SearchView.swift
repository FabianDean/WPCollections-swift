//
//  LibraryView.swift
//  WPCollections
//
//  Created by Fabian Flores on 6/22/20.
//

import SwiftUI

struct SearchView: View {
    @State private var selectorIndex = 0
    @State private var resultTypes = ["Themes","Plugins"]
    @State var query: String = ""
    @State var text: String = "Search for your favorite themes and plugins"
    
    // [Placeholder] replace with call to API for results
    func updateText() -> Void {
        let type: String = resultTypes[selectorIndex]
        self.text = "\(type): \(self.query)"
    }
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    SearchBar(placeholder: "Search", text: $query, action: updateText)
                    CustomSegmentedControl(name: "Results", selectorIndex: $selectorIndex, controls: resultTypes)
                      
                    Text("Selected value is: \(resultTypes[selectorIndex])").padding()
                    Text("\($text.wrappedValue)")
                    Spacer()
                }
            }
                .background(Color.clear.contentShape(Rectangle()))
//                .onTapGesture {
//                    UIApplication.shared.endEditing()
//                }
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
