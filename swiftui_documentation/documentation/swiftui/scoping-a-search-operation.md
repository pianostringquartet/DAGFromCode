---
title: Scoping a search operation
description: Divide the search space into a few broad categories.
source: https://developer.apple.com/documentation/swiftui/scoping-a-search-operation
timestamp: 2025-10-29T00:13:54.087Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Article**

# Scoping a search operation

> Divide the search space into a few broad categories.

## Overview

If the data you want to search falls into a few categories, you can define different scopes to help people narrow their search. When you define a scope, SwiftUI presents a picker that people can use to choose one of them. You then use the current scope selection as one of the inputs to the search operation.

### Define the possible scopes

Start by creating a type that conforms to the [Hashable](/documentation/Swift/Hashable) protocol to represent the possible scopes. For example, you can use an enumeration to scope a product search to just fruits or just vegetables:

```swift
enum ProductScope {
    case fruit
    case vegetable
}
```

Then create a property to store the current scope, either as a state variable in a view, or a published property in your model:

```swift
@Published var scope: ProductScope = .fruit
```

### Apply the scope

To use the scope information, bind the current scope to the [searchScopes(_:scopes:)](/documentation/swiftui/view/searchscopes(_:scopes:)) modifier. You also indicate a set of views that correspond to the different scopes. Like the [searchSuggestions(_:)](/documentation/swiftui/view/searchsuggestions(_:)) modifier, the scopes modifier operates on the searchable modifier that’s closer to the modified view, so it needs to follow the searchable modifier:

```swift
ProductList(departmentId: departmentId, productId: $productId)
    .searchable(text: $model.searchText, tokens: $model.tokens) { token in
        switch token {
        case .apple: Text("Apple")
        case .pear: Text("Pear")
        case .banana: Text("Banana")
        }
    }
    .searchScopes($model.scope) {
        Text("Fruit").tag(ProductScope.fruit)
        Text("Vegetable").tag(ProductScope.vegetable)
    }
```

SwiftUI uses the binding and views to add a [Picker](/documentation/swiftui/picker) to the search field. By default, the picker appears below the search field in macOS when search is active, or in iOS when someone starts entering text into the search field:

You can change when the picker appears by using the [searchScopes(_:activation:_:)](/documentation/swiftui/view/searchscopes(_:activation:_:)) modifier instead, and supplying one of the [Search Scope Activation](/documentation/swiftui/searchscopeactivation) values, like [on Text Entry](/documentation/swiftui/searchscopeactivation/ontextentry) or [on Search Presentation](/documentation/swiftui/searchscopeactivation/onsearchpresentation).

To ensure that the picker operates correctly, match the type of the scope binding with the type of each view’s tag. In the above example, both the `scope` input and the tags for each view have the type `ProductScope`.

### Use the scope in your search

Modify your search to account for the current value of the `scope` property, if you offer it, along with the text and tokens in the query. For example, you might include the scope as one element of a predicate that you define for a Core Data fetch request. For more information about conducting a search, see [Performing-a-search](/documentation/swiftui/performing-a-search-operation).

## Limiting search scope

- [searchScopes(_:scopes:)](/documentation/swiftui/view/searchscopes(_:scopes:))
- [searchScopes(_:activation:_:)](/documentation/swiftui/view/searchscopes(_:activation:_:))
- [SearchScopeActivation](/documentation/swiftui/searchscopeactivation)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
