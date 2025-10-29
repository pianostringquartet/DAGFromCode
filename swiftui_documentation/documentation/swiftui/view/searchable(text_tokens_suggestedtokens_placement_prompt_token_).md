---
title: searchable(text:tokens:suggestedTokens:placement:prompt:token:)
description: Marks this view as searchable with text, tokens, and suggestions.
source: https://developer.apple.com/documentation/swiftui/view/searchable(text:tokens:suggestedtokens:placement:prompt:token:)
timestamp: 2025-10-29T00:09:32.571Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# searchable(text:tokens:suggestedTokens:placement:prompt:token:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+

> Marks this view as searchable with text, tokens, and suggestions.

```swift
nonisolated func searchable<C, T, S>(text: Binding<String>, tokens: Binding<C>, suggestedTokens: Binding<C>, placement: SearchFieldPlacement = .automatic, prompt: S, @ViewBuilder token: @escaping (C.Element) -> T) -> some View where C : MutableCollection, C : RandomAccessCollection, C : RangeReplaceableCollection, T : View, S : StringProtocol, C.Element : Identifiable
```

## Parameters

**text**

The text to display and edit in the search field.



**tokens**

A collection of tokens to display and edit in the search field.



**suggestedTokens**

A collection of tokens to display as suggestions.



**placement**

The preferred placement of the search field within the containing view hierarchy.



**prompt**

A string representing the prompt of the search field which provides users with guidance on what to search for.



**token**

A view builder that creates a view given an element in tokens.



## Discussion

For more information about using searchable modifiers, see [Adding-a-search-interface-to-your](/documentation/swiftui/adding-a-search-interface-to-your-app).

## Making search suggestions

- [Suggesting search terms](/documentation/swiftui/suggesting-search-terms)
- [searchSuggestions(_:)](/documentation/swiftui/view/searchsuggestions(_:))
- [searchSuggestions(_:for:)](/documentation/swiftui/view/searchsuggestions(_:for:))
- [searchCompletion(_:)](/documentation/swiftui/view/searchcompletion(_:))
- [SearchSuggestionsPlacement](/documentation/swiftui/searchsuggestionsplacement)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
