---
title: searchable(text:isPresented:placement:prompt:)
description: Marks this view as searchable with programmatic presentation of the search field.
source: https://developer.apple.com/documentation/swiftui/view/searchable(text:ispresented:placement:prompt:)
timestamp: 2025-10-29T00:13:59.587Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# searchable(text:isPresented:placement:prompt:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> Marks this view as searchable with programmatic presentation of the search field.

```swift
nonisolated func searchable(text: Binding<String>, isPresented: Binding<Bool>, placement: SearchFieldPlacement = .automatic, prompt: LocalizedStringKey) -> some View
```

## Parameters

**text**

The text to display and edit in the search field.



**placement**

The preferred placement of the search field within the containing view hierarchy.



**prompt**

The key for the localized prompt of the search field which provides users with guidance on what to search for.



## Discussion

For more information about using searchable modifiers, see [Adding-a-search-interface-to-your](/documentation/swiftui/adding-a-search-interface-to-your-app). For information about presenting a search field programmatically, see [Managing-search-interface](/documentation/swiftui/managing-search-interface-activation).

## Detecting, activating, and dismissing search

- [Managing search interface activation](/documentation/swiftui/managing-search-interface-activation)
- [isSearching](/documentation/swiftui/environmentvalues/issearching)
- [dismissSearch](/documentation/swiftui/environmentvalues/dismisssearch)
- [DismissSearchAction](/documentation/swiftui/dismisssearchaction)
- [searchable(text:tokens:isPresented:placement:prompt:token:)](/documentation/swiftui/view/searchable(text:tokens:ispresented:placement:prompt:token:))
- [searchable(text:editableTokens:isPresented:placement:prompt:token:)](/documentation/swiftui/view/searchable(text:editabletokens:ispresented:placement:prompt:token:))
- [searchable(text:tokens:suggestedTokens:isPresented:placement:prompt:token:)](/documentation/swiftui/view/searchable(text:tokens:suggestedtokens:ispresented:placement:prompt:token:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
