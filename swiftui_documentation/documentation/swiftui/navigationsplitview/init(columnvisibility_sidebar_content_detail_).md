---
title: init(columnVisibility:sidebar:content:detail:)
description: Creates a three-column navigation split view that enables programmatic control of leading columns’ visibility.
source: https://developer.apple.com/documentation/swiftui/navigationsplitview/init(columnvisibility:sidebar:content:detail:)
timestamp: 2025-10-29T00:11:29.757Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [navigationsplitview](/documentation/swiftui/navigationsplitview)

**Initializer**

# init(columnVisibility:sidebar:content:detail:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a three-column navigation split view that enables programmatic control of leading columns’ visibility.

```swift
init(columnVisibility: Binding<NavigationSplitViewVisibility>, @ViewBuilder sidebar: () -> Sidebar, @ViewBuilder content: () -> Content, @ViewBuilder detail: () -> Detail)
```

## Parameters

**columnVisibility**

A [Binding](/documentation/swiftui/binding) to state that controls the visibility of the leading columns.



**sidebar**

The view to show in the leading column.



**content**

The view to show in the middle column.



**detail**

The view to show in the detail area.



## Hiding columns in a navigation split view

- [init(columnVisibility:sidebar:detail:)](/documentation/swiftui/navigationsplitview/init(columnvisibility:sidebar:detail:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
