---
title: searchPresentationToolbarBehavior(_:)
description: Configures the search toolbar presentation behavior for any searchable modifiers within this view.
source: https://developer.apple.com/documentation/swiftui/view/searchpresentationtoolbarbehavior(_:)
timestamp: 2025-10-29T00:10:28.847Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# searchPresentationToolbarBehavior(_:)

**Available on:** iOS 17.1+, iPadOS 17.1+, Mac Catalyst 17.1+, macOS 14.1+, tvOS 17.1+, visionOS 1.0+, watchOS 10.1+

> Configures the search toolbar presentation behavior for any searchable modifiers within this view.

```swift
nonisolated func searchPresentationToolbarBehavior(_ behavior: SearchPresentationToolbarBehavior) -> some View
```

## Discussion

By default on iOS, a toolbar may hide parts of its content when presenting search to focus on searching. You can override this behavior by providing a value of [avoid Hiding Content](/documentation/swiftui/searchpresentationtoolbarbehavior/avoidhidingcontent) to this modifer.

```swift
@State private var searchText = ""

List {
    // ... content
}
.searchable(text: $searchText)
.searchPresentationToolbarBehavior(.avoidHidingContent)
```

## Displaying toolbar content during search

- [SearchPresentationToolbarBehavior](/documentation/swiftui/searchpresentationtoolbarbehavior)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
