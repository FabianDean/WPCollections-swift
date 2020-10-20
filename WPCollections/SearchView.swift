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
    @State var text: String = ""
    @State var themes: [Any] = [Any]()
    
    func loadThemesFromAPI(q: String) -> Void {
        Network.shared.apollo.fetch(query: SearchThemeQuery(query: q)) { result in
              switch result {
                  case .success(let graphQLResult):
                    if let results = graphQLResult.data!.resultMap["searchTheme"] as? [Dictionary<String, Any>] {
                        var keys = results.makeIterator()
                        while let next = keys.next() {
                            self.themes.append(next)
//                            // Example: accessing property
//                            if let name = next["name"] as? String {
//                                print("\(name)")
//
                        }
                    }
                    self.text = "\(self.themes)"
                    print("Success!") // Result: \(String(describing: self.themes))")
                    
                  case .failure(let error):
                    print("Failure! Error: \(error)")
              }
        }
    }
    
    func getThemesFromAPI() -> Void {
        //let type: String = resultTypes[selectorIndex]
        self.text = "Loading..."
        if !self.query.isEmpty {
            self.themes = [] // reset themes array
            loadThemesFromAPI(q: self.query)
        }
    }
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    VStack {
                        SearchBar(text: $query, placeholder: "Search", action: getThemesFromAPI)
                        CustomSegmentedControl(name: "Results", selectorIndex: $selectorIndex, controls: resultTypes)
                    }
                    ScrollView {
                        //Text("Selected value is: \(resultTypes[selectorIndex])").padding()
                        Text("\($text.wrappedValue)")
                        Spacer()
                    }
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
