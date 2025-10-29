---
title: toolbar(removing:)
description: Remove a toolbar item present by default
source: https://developer.apple.com/documentation/swiftui/view/toolbar(removing:)
timestamp: 2025-10-29T00:09:47.403Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# toolbar(removing:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Remove a toolbar item present by default

```swift
nonisolated func toolbar(removing defaultItemKind: ToolbarDefaultItemKind?) -> some View
```

## Parameters

**defaultItemKind**

The kind of default item to remove



## Discussion

Use this modifier to remove toolbar items other `View`s add by default. For example, to remove the sidebar toggle toolbar item provided by `NavigationSplitView`:

```swift
NavigationSplitView {
    SidebarView()
        .toolbar(removing: .sidebarToggle)
} detail: {
    DetailView()
}
```

## Removing default items

- [ToolbarDefaultItemKind](/documentation/swiftui/toolbardefaultitemkind)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
