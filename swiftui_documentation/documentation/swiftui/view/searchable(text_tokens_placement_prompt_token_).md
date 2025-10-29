---
title: searchable(text:tokens:placement:prompt:token:)
description: Marks this view as searchable with text and tokens.
source: https://developer.apple.com/documentation/swiftui/view/searchable(text:tokens:placement:prompt:token:)
timestamp: 2025-10-29T00:09:17.173Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# searchable(text:tokens:placement:prompt:token:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+

> Marks this view as searchable with text and tokens.

```swift
nonisolated func searchable<C, T, S>(text: Binding<String>, tokens: Binding<C>, placement: SearchFieldPlacement = .automatic, prompt: S, @ViewBuilder token: @escaping (C.Element) -> T) -> some View where C : RandomAccessCollection, C : RangeReplaceableCollection, T : View, S : StringProtocol, C.Element : Identifiable
```

## Parameters

**text**

The text to display and edit in the search field.



**tokens**

A collection of tokens to display and edit in the search field.



**placement**

The preferred placement of the search field within the containing view hierarchy.



**prompt**

A string representing the prompt of the search field which provides users with guidance on what to search for.



**token**

A view builder that creates a view given an element in tokens.



## Discussion

For more information about using searchable modifiers, see [Adding-a-search-interface-to-your](/documentation/swiftui/adding-a-search-interface-to-your-app).

## Searching your app’s data model

- [Adding a search interface to your app](/documentation/swiftui/adding-a-search-interface-to-your-app)
- [Performing a search operation](/documentation/swiftui/performing-a-search-operation)
- [searchable(text:placement:prompt:)](/documentation/swiftui/view/searchable(text:placement:prompt:))
- [searchable(text:editableTokens:placement:prompt:token:)](/documentation/swiftui/view/searchable(text:editabletokens:placement:prompt:token:))
- [SearchFieldPlacement](/documentation/swiftui/searchfieldplacement)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
