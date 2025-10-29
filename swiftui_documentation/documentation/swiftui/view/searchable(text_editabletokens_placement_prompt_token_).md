---
title: searchable(text:editableTokens:placement:prompt:token:)
description: Marks this view as searchable, which configures the display of a search field.
source: https://developer.apple.com/documentation/swiftui/view/searchable(text:editabletokens:placement:prompt:token:)
timestamp: 2025-10-29T00:11:56.496Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# searchable(text:editableTokens:placement:prompt:token:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> Marks this view as searchable, which configures the display of a search field.

```swift
nonisolated func searchable<C>(text: Binding<String>, editableTokens: Binding<C>, placement: SearchFieldPlacement = .automatic, prompt: LocalizedStringKey, @ViewBuilder token: @escaping (Binding<C.Element>) -> some View) -> some View where C : RandomAccessCollection, C : RangeReplaceableCollection, C.Element : Identifiable
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

## Searching your app’s data model

- [Adding a search interface to your app](/documentation/swiftui/adding-a-search-interface-to-your-app)
- [Performing a search operation](/documentation/swiftui/performing-a-search-operation)
- [searchable(text:placement:prompt:)](/documentation/swiftui/view/searchable(text:placement:prompt:))
- [searchable(text:tokens:placement:prompt:token:)](/documentation/swiftui/view/searchable(text:tokens:placement:prompt:token:))
- [SearchFieldPlacement](/documentation/swiftui/searchfieldplacement)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
