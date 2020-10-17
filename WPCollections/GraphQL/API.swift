// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class SearchThemeQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query SearchTheme($query: String!) {
      searchTheme(query: $query) {
        __typename
        name
        description
        author
        downloads
      }
    }
    """

  public let operationName: String = "SearchTheme"

  public var query: String

  public init(query: String) {
    self.query = query
  }

  public var variables: GraphQLMap? {
    return ["query": query]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("searchTheme", arguments: ["query": GraphQLVariable("query")], type: .list(.object(SearchTheme.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(searchTheme: [SearchTheme?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "searchTheme": searchTheme.flatMap { (value: [SearchTheme?]) -> [ResultMap?] in value.map { (value: SearchTheme?) -> ResultMap? in value.flatMap { (value: SearchTheme) -> ResultMap in value.resultMap } } }])
    }

    public var searchTheme: [SearchTheme?]? {
      get {
        return (resultMap["searchTheme"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [SearchTheme?] in value.map { (value: ResultMap?) -> SearchTheme? in value.flatMap { (value: ResultMap) -> SearchTheme in SearchTheme(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [SearchTheme?]) -> [ResultMap?] in value.map { (value: SearchTheme?) -> ResultMap? in value.flatMap { (value: SearchTheme) -> ResultMap in value.resultMap } } }, forKey: "searchTheme")
      }
    }

    public struct SearchTheme: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Theme"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("author", type: .scalar(String.self)),
          GraphQLField("downloads", type: .scalar(Int.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String? = nil, description: String? = nil, author: String? = nil, downloads: Int? = nil) {
        self.init(unsafeResultMap: ["__typename": "Theme", "name": name, "description": description, "author": author, "downloads": downloads])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return resultMap["description"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "description")
        }
      }

      public var author: String? {
        get {
          return resultMap["author"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "author")
        }
      }

      public var downloads: Int? {
        get {
          return resultMap["downloads"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "downloads")
        }
      }
    }
  }
}

public final class SearchPluginQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query SearchPlugin($query: String!) {
      searchPlugin(query: $query) {
        __typename
        name
        description
        author
        downloads
      }
    }
    """

  public let operationName: String = "SearchPlugin"

  public var query: String

  public init(query: String) {
    self.query = query
  }

  public var variables: GraphQLMap? {
    return ["query": query]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("searchPlugin", arguments: ["query": GraphQLVariable("query")], type: .list(.object(SearchPlugin.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(searchPlugin: [SearchPlugin?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "searchPlugin": searchPlugin.flatMap { (value: [SearchPlugin?]) -> [ResultMap?] in value.map { (value: SearchPlugin?) -> ResultMap? in value.flatMap { (value: SearchPlugin) -> ResultMap in value.resultMap } } }])
    }

    public var searchPlugin: [SearchPlugin?]? {
      get {
        return (resultMap["searchPlugin"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [SearchPlugin?] in value.map { (value: ResultMap?) -> SearchPlugin? in value.flatMap { (value: ResultMap) -> SearchPlugin in SearchPlugin(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [SearchPlugin?]) -> [ResultMap?] in value.map { (value: SearchPlugin?) -> ResultMap? in value.flatMap { (value: SearchPlugin) -> ResultMap in value.resultMap } } }, forKey: "searchPlugin")
      }
    }

    public struct SearchPlugin: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Plugin"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("author", type: .scalar(String.self)),
          GraphQLField("downloads", type: .scalar(Int.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String? = nil, description: String? = nil, author: String? = nil, downloads: Int? = nil) {
        self.init(unsafeResultMap: ["__typename": "Plugin", "name": name, "description": description, "author": author, "downloads": downloads])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return resultMap["description"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "description")
        }
      }

      public var author: String? {
        get {
          return resultMap["author"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "author")
        }
      }

      public var downloads: Int? {
        get {
          return resultMap["downloads"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "downloads")
        }
      }
    }
  }
}
