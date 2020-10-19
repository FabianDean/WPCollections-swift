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
        slug
        homepage
        downloads
        rating
        screenshot_url
        preview_url
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
          GraphQLField("slug", type: .scalar(String.self)),
          GraphQLField("homepage", type: .scalar(String.self)),
          GraphQLField("downloads", type: .scalar(Int.self)),
          GraphQLField("rating", type: .scalar(Int.self)),
          GraphQLField("screenshot_url", type: .scalar(String.self)),
          GraphQLField("preview_url", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String? = nil, description: String? = nil, author: String? = nil, slug: String? = nil, homepage: String? = nil, downloads: Int? = nil, rating: Int? = nil, screenshotUrl: String? = nil, previewUrl: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Theme", "name": name, "description": description, "author": author, "slug": slug, "homepage": homepage, "downloads": downloads, "rating": rating, "screenshot_url": screenshotUrl, "preview_url": previewUrl])
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

      public var slug: String? {
        get {
          return resultMap["slug"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "slug")
        }
      }

      public var homepage: String? {
        get {
          return resultMap["homepage"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "homepage")
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

      public var rating: Int? {
        get {
          return resultMap["rating"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "rating")
        }
      }

      public var screenshotUrl: String? {
        get {
          return resultMap["screenshot_url"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "screenshot_url")
        }
      }

      public var previewUrl: String? {
        get {
          return resultMap["preview_url"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "preview_url")
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
        short_description
        author
        slug
        homepage
        downloads
        rating
        ratings {
          __typename
          one
          two
          three
          four
          five
        }
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
          GraphQLField("short_description", type: .scalar(String.self)),
          GraphQLField("author", type: .scalar(String.self)),
          GraphQLField("slug", type: .scalar(String.self)),
          GraphQLField("homepage", type: .scalar(String.self)),
          GraphQLField("downloads", type: .scalar(Int.self)),
          GraphQLField("rating", type: .scalar(Int.self)),
          GraphQLField("ratings", type: .object(Rating.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String? = nil, description: String? = nil, shortDescription: String? = nil, author: String? = nil, slug: String? = nil, homepage: String? = nil, downloads: Int? = nil, rating: Int? = nil, ratings: Rating? = nil) {
        self.init(unsafeResultMap: ["__typename": "Plugin", "name": name, "description": description, "short_description": shortDescription, "author": author, "slug": slug, "homepage": homepage, "downloads": downloads, "rating": rating, "ratings": ratings.flatMap { (value: Rating) -> ResultMap in value.resultMap }])
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

      public var shortDescription: String? {
        get {
          return resultMap["short_description"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "short_description")
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

      public var slug: String? {
        get {
          return resultMap["slug"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "slug")
        }
      }

      public var homepage: String? {
        get {
          return resultMap["homepage"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "homepage")
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

      public var rating: Int? {
        get {
          return resultMap["rating"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "rating")
        }
      }

      public var ratings: Rating? {
        get {
          return (resultMap["ratings"] as? ResultMap).flatMap { Rating(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "ratings")
        }
      }

      public struct Rating: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Ratings"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("one", type: .scalar(Int.self)),
            GraphQLField("two", type: .scalar(Int.self)),
            GraphQLField("three", type: .scalar(Int.self)),
            GraphQLField("four", type: .scalar(Int.self)),
            GraphQLField("five", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(one: Int? = nil, two: Int? = nil, three: Int? = nil, four: Int? = nil, five: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "Ratings", "one": one, "two": two, "three": three, "four": four, "five": five])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var one: Int? {
          get {
            return resultMap["one"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "one")
          }
        }

        public var two: Int? {
          get {
            return resultMap["two"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "two")
          }
        }

        public var three: Int? {
          get {
            return resultMap["three"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "three")
          }
        }

        public var four: Int? {
          get {
            return resultMap["four"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "four")
          }
        }

        public var five: Int? {
          get {
            return resultMap["five"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "five")
          }
        }
      }
    }
  }
}

public final class GetThemeInfoQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetThemeInfo($slug: String!) {
      getThemeInfo(slug: $slug) {
        __typename
        name
        author
        slug
        homepage
        description
        downloads
        rating
        screenshot_url
        preview_url
      }
    }
    """

  public let operationName: String = "GetThemeInfo"

  public var slug: String

  public init(slug: String) {
    self.slug = slug
  }

  public var variables: GraphQLMap? {
    return ["slug": slug]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("getThemeInfo", arguments: ["slug": GraphQLVariable("slug")], type: .object(GetThemeInfo.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getThemeInfo: GetThemeInfo? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "getThemeInfo": getThemeInfo.flatMap { (value: GetThemeInfo) -> ResultMap in value.resultMap }])
    }

    public var getThemeInfo: GetThemeInfo? {
      get {
        return (resultMap["getThemeInfo"] as? ResultMap).flatMap { GetThemeInfo(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "getThemeInfo")
      }
    }

    public struct GetThemeInfo: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Theme"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("author", type: .scalar(String.self)),
          GraphQLField("slug", type: .scalar(String.self)),
          GraphQLField("homepage", type: .scalar(String.self)),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("downloads", type: .scalar(Int.self)),
          GraphQLField("rating", type: .scalar(Int.self)),
          GraphQLField("screenshot_url", type: .scalar(String.self)),
          GraphQLField("preview_url", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String? = nil, author: String? = nil, slug: String? = nil, homepage: String? = nil, description: String? = nil, downloads: Int? = nil, rating: Int? = nil, screenshotUrl: String? = nil, previewUrl: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Theme", "name": name, "author": author, "slug": slug, "homepage": homepage, "description": description, "downloads": downloads, "rating": rating, "screenshot_url": screenshotUrl, "preview_url": previewUrl])
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

      public var author: String? {
        get {
          return resultMap["author"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "author")
        }
      }

      public var slug: String? {
        get {
          return resultMap["slug"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "slug")
        }
      }

      public var homepage: String? {
        get {
          return resultMap["homepage"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "homepage")
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

      public var downloads: Int? {
        get {
          return resultMap["downloads"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "downloads")
        }
      }

      public var rating: Int? {
        get {
          return resultMap["rating"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "rating")
        }
      }

      public var screenshotUrl: String? {
        get {
          return resultMap["screenshot_url"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "screenshot_url")
        }
      }

      public var previewUrl: String? {
        get {
          return resultMap["preview_url"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "preview_url")
        }
      }
    }
  }
}

public final class GetPluginInfoQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetPluginInfo($slug: String!) {
      getPluginInfo(slug: $slug) {
        __typename
        name
        author
        slug
        homepage
        description
        downloads
        rating
        ratings {
          __typename
          one
          two
          three
          four
          five
        }
        screenshots {
          __typename
          src
          caption
        }
        banners {
          __typename
          low
          high
        }
      }
    }
    """

  public let operationName: String = "GetPluginInfo"

  public var slug: String

  public init(slug: String) {
    self.slug = slug
  }

  public var variables: GraphQLMap? {
    return ["slug": slug]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("getPluginInfo", arguments: ["slug": GraphQLVariable("slug")], type: .object(GetPluginInfo.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getPluginInfo: GetPluginInfo? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "getPluginInfo": getPluginInfo.flatMap { (value: GetPluginInfo) -> ResultMap in value.resultMap }])
    }

    public var getPluginInfo: GetPluginInfo? {
      get {
        return (resultMap["getPluginInfo"] as? ResultMap).flatMap { GetPluginInfo(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "getPluginInfo")
      }
    }

    public struct GetPluginInfo: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Plugin"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("author", type: .scalar(String.self)),
          GraphQLField("slug", type: .scalar(String.self)),
          GraphQLField("homepage", type: .scalar(String.self)),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("downloads", type: .scalar(Int.self)),
          GraphQLField("rating", type: .scalar(Int.self)),
          GraphQLField("ratings", type: .object(Rating.selections)),
          GraphQLField("screenshots", type: .list(.object(Screenshot.selections))),
          GraphQLField("banners", type: .list(.object(Banner.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String? = nil, author: String? = nil, slug: String? = nil, homepage: String? = nil, description: String? = nil, downloads: Int? = nil, rating: Int? = nil, ratings: Rating? = nil, screenshots: [Screenshot?]? = nil, banners: [Banner?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Plugin", "name": name, "author": author, "slug": slug, "homepage": homepage, "description": description, "downloads": downloads, "rating": rating, "ratings": ratings.flatMap { (value: Rating) -> ResultMap in value.resultMap }, "screenshots": screenshots.flatMap { (value: [Screenshot?]) -> [ResultMap?] in value.map { (value: Screenshot?) -> ResultMap? in value.flatMap { (value: Screenshot) -> ResultMap in value.resultMap } } }, "banners": banners.flatMap { (value: [Banner?]) -> [ResultMap?] in value.map { (value: Banner?) -> ResultMap? in value.flatMap { (value: Banner) -> ResultMap in value.resultMap } } }])
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

      public var author: String? {
        get {
          return resultMap["author"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "author")
        }
      }

      public var slug: String? {
        get {
          return resultMap["slug"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "slug")
        }
      }

      public var homepage: String? {
        get {
          return resultMap["homepage"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "homepage")
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

      public var downloads: Int? {
        get {
          return resultMap["downloads"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "downloads")
        }
      }

      public var rating: Int? {
        get {
          return resultMap["rating"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "rating")
        }
      }

      public var ratings: Rating? {
        get {
          return (resultMap["ratings"] as? ResultMap).flatMap { Rating(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "ratings")
        }
      }

      public var screenshots: [Screenshot?]? {
        get {
          return (resultMap["screenshots"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Screenshot?] in value.map { (value: ResultMap?) -> Screenshot? in value.flatMap { (value: ResultMap) -> Screenshot in Screenshot(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Screenshot?]) -> [ResultMap?] in value.map { (value: Screenshot?) -> ResultMap? in value.flatMap { (value: Screenshot) -> ResultMap in value.resultMap } } }, forKey: "screenshots")
        }
      }

      public var banners: [Banner?]? {
        get {
          return (resultMap["banners"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Banner?] in value.map { (value: ResultMap?) -> Banner? in value.flatMap { (value: ResultMap) -> Banner in Banner(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Banner?]) -> [ResultMap?] in value.map { (value: Banner?) -> ResultMap? in value.flatMap { (value: Banner) -> ResultMap in value.resultMap } } }, forKey: "banners")
        }
      }

      public struct Rating: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Ratings"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("one", type: .scalar(Int.self)),
            GraphQLField("two", type: .scalar(Int.self)),
            GraphQLField("three", type: .scalar(Int.self)),
            GraphQLField("four", type: .scalar(Int.self)),
            GraphQLField("five", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(one: Int? = nil, two: Int? = nil, three: Int? = nil, four: Int? = nil, five: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "Ratings", "one": one, "two": two, "three": three, "four": four, "five": five])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var one: Int? {
          get {
            return resultMap["one"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "one")
          }
        }

        public var two: Int? {
          get {
            return resultMap["two"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "two")
          }
        }

        public var three: Int? {
          get {
            return resultMap["three"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "three")
          }
        }

        public var four: Int? {
          get {
            return resultMap["four"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "four")
          }
        }

        public var five: Int? {
          get {
            return resultMap["five"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "five")
          }
        }
      }

      public struct Screenshot: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Screenshot"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("src", type: .scalar(String.self)),
            GraphQLField("caption", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(src: String? = nil, caption: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Screenshot", "src": src, "caption": caption])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var src: String? {
          get {
            return resultMap["src"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "src")
          }
        }

        public var caption: String? {
          get {
            return resultMap["caption"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "caption")
          }
        }
      }

      public struct Banner: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Banner"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("low", type: .scalar(String.self)),
            GraphQLField("high", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(low: String? = nil, high: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Banner", "low": low, "high": high])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var low: String? {
          get {
            return resultMap["low"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "low")
          }
        }

        public var high: String? {
          get {
            return resultMap["high"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "high")
          }
        }
      }
    }
  }
}
