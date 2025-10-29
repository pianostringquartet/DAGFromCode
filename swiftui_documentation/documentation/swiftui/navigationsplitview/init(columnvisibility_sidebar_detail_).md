---
title: init(columnVisibility:sidebar:detail:)
description: Creates a two-column navigation split view that enables programmatic control of the sidebar’s visibility.
source: https://developer.apple.com/documentation/swiftui/navigationsplitview/init(columnvisibility:sidebar:detail:)
timestamp: 2025-10-29T00:14:24.044Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [navigationsplitview](/documentation/swiftui/navigationsplitview)

**Initializer**

# init(columnVisibility:sidebar:detail:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a two-column navigation split view that enables programmatic control of the sidebar’s visibility.

```swift
init(columnVisibility: Binding<NavigationSplitViewVisibility>, @ViewBuilder sidebar: () -> Sidebar, @ViewBuilder detail: () -> Detail) where Content == EmptyView
```

## Parameters

**columnVisibility**

A [Binding](/documentation/swiftui/binding) to state that controls the visibility of the leading column.



**sidebar**

The view to show in the leading column.



**detail**

The view to show in the detail area.



## Hiding columns in a navigation split view

- [init(columnVisibility:sidebar:content:detail:)](/documentation/swiftui/navigationsplitview/init(columnvisibility:sidebar:content:detail:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
