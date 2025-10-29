---
title: searchScopes(_:activation:_:)
description: Configures the search scopes for this view with the specified activation strategy.
source: https://developer.apple.com/documentation/swiftui/view/searchscopes(_:activation:_:)
timestamp: 2025-10-29T00:14:49.236Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# searchScopes(_:activation:_:)

**Available on:** iOS 16.4+, iPadOS 16.4+, Mac Catalyst 16.4+, macOS 13.3+, tvOS 16.4+, visionOS 1.0+

> Configures the search scopes for this view with the specified activation strategy.

```swift
nonisolated func searchScopes<V, S>(_ scope: Binding<V>, activation: SearchScopeActivation, @ViewBuilder _ scopes: () -> S) -> some View where V : Hashable, S : View
```

## Parameters

**scope**

The active scope of the search field.



**activation**

The activation style of the search field’s scopes.



**scopes**

A view builder that represents the scoping options SwiftUI uses to populate a [Picker](/documentation/swiftui/picker).



## Discussion

To enable people to narrow the scope of their searches, you can create a type that represents the possible scopes, and then create a state variable to hold the current selection. For example, you can scope the product search to just fruits or just vegetables:

```swift
enum ProductScope {
    case fruit
    case vegetable
}

@State private var scope: ProductScope = .fruit
```

Provide a binding to the scope, as well as a view that represents each scope:

```swift
ProductList()
    .searchable(text: $text, tokens: $tokens) { token in
        switch token {
        case .apple: Text("Apple")
        case .pear: Text("Pear")
        case .banana: Text("Banana")
        }
    }
    .searchScopes($scope) {
        Text("Fruit").tag(ProductScope.fruit)
        Text("Vegetable").tag(ProductScope.vegetable)
    }
```

SwiftUI uses this binding and view to add a [Picker](/documentation/swiftui/picker) below the search field. In iOS, macOS, and tvOS, the picker appears below the search field when search is active. To ensure that the picker operates correctly, match the type of the scope binding with the type of each view’s tag. Then condition your search on the current value of the `scope` state property.

By default, the appearance of scopes varies by platform:

- In iOS and iPadOS, search scopes appear when someone enters text into the search field and disappear when someone cancels the search.
- In macOS, search scopes appear when SwiftUI presents search and disappear when someone cancels the search.

However, you can use the `activation` parameter with a value of [on Text Entry](/documentation/swiftui/searchscopeactivation/ontextentry) or [on Search Presentation](/documentation/swiftui/searchscopeactivation/onsearchpresentation) to configure this behavior:

```swift
.searchScopes($scope, activation: .onSearchPresentation) {
    Text("Fruit").tag(ProductScope.fruit)
    Text("Vegetable").tag(ProductScope.vegetable)
}
```

For more information about using searchable modifiers, see [Adding-a-search-interface-to-your](/documentation/swiftui/adding-a-search-interface-to-your-app).

## Limiting search scope

- [Scoping a search operation](/documentation/swiftui/scoping-a-search-operation)
- [searchScopes(_:scopes:)](/documentation/swiftui/view/searchscopes(_:scopes:))
- [SearchScopeActivation](/documentation/swiftui/searchscopeactivation)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
