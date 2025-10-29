---
title: init(columnVisibility:preferredCompactColumn:sidebar:detail:)
description: Creates a two-column navigation split view that enables programmatic control of the sidebar’s visibility in regular sizes and which column appears on top when the view collapses into a single column in narrow sizes.
source: https://developer.apple.com/documentation/swiftui/navigationsplitview/init(columnvisibility:preferredcompactcolumn:sidebar:detail:)
timestamp: 2025-10-29T00:12:53.987Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [navigationsplitview](/documentation/swiftui/navigationsplitview)

**Initializer**

# init(columnVisibility:preferredCompactColumn:sidebar:detail:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates a two-column navigation split view that enables programmatic control of the sidebar’s visibility in regular sizes and which column appears on top when the view collapses into a single column in narrow sizes.

```swift
nonisolated init(columnVisibility: Binding<NavigationSplitViewVisibility>, preferredCompactColumn: Binding<NavigationSplitViewColumn>, @ViewBuilder sidebar: () -> Sidebar, @ViewBuilder detail: () -> Detail) where Content == EmptyView
```

## Parameters

**columnVisibility**

A [Binding](/documentation/swiftui/binding) to state that controls the visibility of the leading column.



**preferredCompactColumn**

A [Binding](/documentation/swiftui/binding) to state that controls which column appears on top when the view collapses.



**sidebar**

The view to show in the leading column.



**detail**

The view to show in the detail area.



## Specifying a preferred compact column and column visibility

- [init(columnVisibility:preferredCompactColumn:sidebar:content:detail:)](/documentation/swiftui/navigationsplitview/init(columnvisibility:preferredcompactcolumn:sidebar:content:detail:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
