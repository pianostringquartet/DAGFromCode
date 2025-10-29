---
title: searchable(text:editableTokens:isPresented:placement:prompt:token:)
description: Marks this view as searchable, which configures the display of a search field.
source: https://developer.apple.com/documentation/swiftui/view/searchable(text:editabletokens:ispresented:placement:prompt:token:)
timestamp: 2025-10-29T00:11:58.735Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# searchable(text:editableTokens:isPresented:placement:prompt:token:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> Marks this view as searchable, which configures the display of a search field.

```swift
nonisolated func searchable<C>(text: Binding<String>, editableTokens: Binding<C>, isPresented: Binding<Bool>, placement: SearchFieldPlacement = .automatic, prompt: LocalizedStringKey, @ViewBuilder token: @escaping (Binding<C.Element>) -> some View) -> some View where C : RandomAccessCollection, C : RangeReplaceableCollection, C.Element : Identifiable
```

## Parameters

**text**

The text to display and edit in the search field.



**editableTokens**

A collection of tokens to display and edit in the search field.



**placement**

The preferred placement of the search field within the containing view hierarchy.



**prompt**

The key for the localized prompt of the search field which provides users with guidance on what to search for.



**token**

A view builder that creates a view given an element in tokens.



## Discussion

For more information about using searchable modifiers, see [Adding-a-search-interface-to-your](/documentation/swiftui/adding-a-search-interface-to-your-app).

## Detecting, activating, and dismissing search

- [Managing search interface activation](/documentation/swiftui/managing-search-interface-activation)
- [isSearching](/documentation/swiftui/environmentvalues/issearching)
- [dismissSearch](/documentation/swiftui/environmentvalues/dismisssearch)
- [DismissSearchAction](/documentation/swiftui/dismisssearchaction)
- [searchable(text:isPresented:placement:prompt:)](/documentation/swiftui/view/searchable(text:ispresented:placement:prompt:))
- [searchable(text:tokens:isPresented:placement:prompt:token:)](/documentation/swiftui/view/searchable(text:tokens:ispresented:placement:prompt:token:))
- [searchable(text:tokens:suggestedTokens:isPresented:placement:prompt:token:)](/documentation/swiftui/view/searchable(text:tokens:suggestedtokens:ispresented:placement:prompt:token:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
