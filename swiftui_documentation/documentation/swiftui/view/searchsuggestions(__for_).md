---
title: searchSuggestions(_:for:)
description: Configures how to display search suggestions within this view.
source: https://developer.apple.com/documentation/swiftui/view/searchsuggestions(_:for:)
timestamp: 2025-10-29T00:11:41.049Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# searchSuggestions(_:for:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Configures how to display search suggestions within this view.

```swift
nonisolated func searchSuggestions(_ visibility: Visibility, for placements: SearchSuggestionsPlacement.Set) -> some View
```

## Parameters

**visibility**

The visibility of the search suggestions for the specified locations.



**placements**

The set of locations in which to set the visibility of search suggestions.



## Discussion

SwiftUI presents search suggestions differently depending on several factors, like the platform, the position of the search field, and the size class. Use this modifier when you want to only display suggestions in certain ways under certain conditions. For example, you might choose to display suggestions in a menu when possible, but directly filter your data source otherwise.

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
            ForEach(suggestions) { suggestion
                Text(suggestion.rawValue)
                    .searchCompletion(suggestion.rawValue)
            }
            .searchSuggestions(.hidden, for: .content)
        }
}
```

## Making search suggestions

- [Suggesting search terms](/documentation/swiftui/suggesting-search-terms)
- [searchSuggestions(_:)](/documentation/swiftui/view/searchsuggestions(_:))
- [searchCompletion(_:)](/documentation/swiftui/view/searchcompletion(_:))
- [searchable(text:tokens:suggestedTokens:placement:prompt:token:)](/documentation/swiftui/view/searchable(text:tokens:suggestedtokens:placement:prompt:token:))
- [SearchSuggestionsPlacement](/documentation/swiftui/searchsuggestionsplacement)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
