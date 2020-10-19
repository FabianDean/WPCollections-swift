//
//  SearchThemeData.swift
//  WPCollections
//
//  Created by Fabian Flores on 10/18/20.
//

// Might not use after all in favor of calling API from within a view

import Foundation
import SwiftUI

class SearchTheme: ObservableObject {
    @Published var themes: [Any]
    var query: String
    
    init(query: String) {
        print("running loadData in SearchTheme.swift")
        self.query = query
        self.themes = [Any]()
        loadData()
    }
    
    func loadData() {
        Network.shared.apollo.fetch(query: SearchThemeQuery(query: query)) { result in
              switch result {
                  case .success(let graphQLResult):
                    if let results = graphQLResult.data!.resultMap["searchTheme"] as? [Dictionary<String, Any>] {
                        var keys = results.makeIterator()
                        while let next = keys.next() {
                            self.themes.append(next)
//                            // Example: accessing property
//                            if let name = next["name"] as? String {
//                                print("\(name)")
//                            }
                        }
                    }
                    print("Success! Result: \(String(describing: self.themes))")
                    
                  case .failure(let error):
                    print("Failure! Error: \(error)")
              }
        }
    }
}
