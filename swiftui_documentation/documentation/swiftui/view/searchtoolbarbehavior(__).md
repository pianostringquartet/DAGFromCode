---
title: searchToolbarBehavior(_:)
description: Configures the behavior for search in the toolbar.
source: https://developer.apple.com/documentation/swiftui/view/searchtoolbarbehavior(_:)
timestamp: 2025-10-29T00:11:56.472Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# searchToolbarBehavior(_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Configures the behavior for search in the toolbar.

```swift
nonisolated func searchToolbarBehavior(_ behavior: SearchToolbarBehavior) -> some View
```

## Discussion

This modifier can be used to change the default behavior of a search field that appears in the toolbar. Place this modifier after the [searchable(text:isPresented:placement:prompt:)](/documentation/swiftui/view/searchable(text:ispresented:placement:prompt:)) modifier that renders search in the toolbar.

On iPhone, the search field in the bottom toolbar can be configured to appear as a button-like control when inactive:

```swift
@State private var searchText = ""

NavigationStack {
    RecipeList()
        .searchable($searchText)
        .searchToolbarBehavior(.minimized)
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
