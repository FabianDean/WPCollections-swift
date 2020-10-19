//
//  Network.swift
//  WPCollections
//
//  Created by Fabian Flores on 10/18/20.
//

import Foundation
import Apollo

class Network {
  static let shared = Network()
    
  private(set) lazy var apollo = ApolloClient(url: URL(string: "https://wpcollections.herokuapp.com/graphql")!)
}
