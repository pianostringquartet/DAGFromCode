---
title: searchCompletion(_:)
description: Associates a fully formed string with the value of this view when used as a search suggestion.
source: https://developer.apple.com/documentation/swiftui/view/searchcompletion(_:)
timestamp: 2025-10-29T00:13:33.060Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# searchCompletion(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Associates a fully formed string with the value of this view when used as a search suggestion.

```swift
nonisolated func searchCompletion(_ completion: String) -> some View
```

## Discussion

Use this method to associate a fully formed string with a view that is within a search suggestion list context. The system uses this value when the view is selected to replace the partial text being currently edited of the associated search field.

On tvOS, the string that you provide to the this modifier is used when displaying the associated suggestion and when replacing the partial text of the search field.

```swift
SearchPlaceholderView()
    .searchable(text: $text) {
        Text("🍎").searchCompletion("apple")
        Text("🍐").searchCompletion("pear")
        Text("🍌").searchCompletion("banana")
    }
```

## Making search suggestions

- [Suggesting search terms](/documentation/swiftui/suggesting-search-terms)
- [searchSuggestions(_:)](/documentation/swiftui/view/searchsuggestions(_:))
- [searchSuggestions(_:for:)](/documentation/swiftui/view/searchsuggestions(_:for:))
- [searchable(text:tokens:suggestedTokens:placement:prompt:token:)](/documentation/swiftui/view/searchable(text:tokens:suggestedtokens:placement:prompt:token:))
- [SearchSuggestionsPlacement](/documentation/swiftui/searchsuggestionsplacement)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
