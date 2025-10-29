---
title: searchable(text:placement:prompt:suggestions:)
description: Marks this view as searchable, which configures the display of a search field.
source: https://developer.apple.com/documentation/swiftui/view/searchable(text:placement:prompt:suggestions:)
timestamp: 2025-10-29T00:12:19.673Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# searchable(text:placement:prompt:suggestions:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Marks this view as searchable, which configures the display of a search field.

```swift
nonisolated func searchable<S>(text: Binding<String>, placement: SearchFieldPlacement = .automatic, prompt: LocalizedStringKey, @ViewBuilder suggestions: () -> S) -> some View where S : View
```

## Parameters

**text**

The text to display and edit in the search field.



**placement**

Where the search field should attempt to be placed based on the containing view hierarchy.



**prompt**

A key for the localized prompt of the search field which provides users with guidance on what to search for.



**suggestions**

A view builder that produces content that populates a list of suggestions.



## Discussion

For more information about using searchable modifiers, see [Adding-a-search-interface-to-your](/documentation/swiftui/adding-a-search-interface-to-your-app).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
