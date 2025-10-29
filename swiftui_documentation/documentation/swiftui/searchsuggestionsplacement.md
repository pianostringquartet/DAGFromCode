---
title: SearchSuggestionsPlacement
description: The ways that SwiftUI displays search suggestions.
source: https://developer.apple.com/documentation/swiftui/searchsuggestionsplacement
timestamp: 2025-10-29T00:12:56.827Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SearchSuggestionsPlacement

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> The ways that SwiftUI displays search suggestions.

```swift
struct SearchSuggestionsPlacement
```

## Overview

You can influence which modes SwiftUI displays search suggestions for by using the [searchSuggestions(_:for:)](/documentation/swiftui/view/searchsuggestions(_:for:)) modifier:

```swift
enum FruitSuggestion: String, Identifiable {
    case apple, banana, orange
    var id: Self { self }
}

@State private var text = ""
@State private var suggestions: [FruitSuggestion] = []

var body: some View {
    MainContent()
        .searchable(text: $text) {
            ForEach(suggestions) { suggestion in
                Text(suggestion.rawValue)
                    .searchCompletion(suggestion.rawValue)
            }
            .searchSuggestions(.hidden, for: .content)
        }
}
```

In the above example, SwiftUI only displays search suggestions in a suggestions menu. You might want to do this when you want to render search suggestions in a container, like inline with your own set of search results.

You can get the current search suggestion placement by querying the [search Suggestions Placement](/documentation/swiftui/environmentvalues/searchsuggestionsplacement) environment value in your search suggestions.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting placements

- [automatic](/documentation/swiftui/searchsuggestionsplacement/automatic) Search suggestions render automatically based on the surrounding context.
- [content](/documentation/swiftui/searchsuggestionsplacement/content) Search suggestions render in the main content of the app.
- [menu](/documentation/swiftui/searchsuggestionsplacement/menu) Search suggestions render inside of a menu attached to the search field.

## Supporting types

- [SearchSuggestionsPlacement.Set](/documentation/swiftui/searchsuggestionsplacement/set) An efficient set of search suggestion display modes.

## Making search suggestions

- [Suggesting search terms](/documentation/swiftui/suggesting-search-terms)
- [searchSuggestions(_:)](/documentation/swiftui/view/searchsuggestions(_:))
- [searchSuggestions(_:for:)](/documentation/swiftui/view/searchsuggestions(_:for:))
- [searchCompletion(_:)](/documentation/swiftui/view/searchcompletion(_:))
- [searchable(text:tokens:suggestedTokens:placement:prompt:token:)](/documentation/swiftui/view/searchable(text:tokens:suggestedtokens:placement:prompt:token:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
