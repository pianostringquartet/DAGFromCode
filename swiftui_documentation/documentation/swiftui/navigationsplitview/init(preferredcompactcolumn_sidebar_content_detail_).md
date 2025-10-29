---
title: init(preferredCompactColumn:sidebar:content:detail:)
description: Creates a three-column navigation split view that enables programmatic control over which column appears on top when the view collapses into a single column in narrow sizes.
source: https://developer.apple.com/documentation/swiftui/navigationsplitview/init(preferredcompactcolumn:sidebar:content:detail:)
timestamp: 2025-10-29T00:11:47.485Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [navigationsplitview](/documentation/swiftui/navigationsplitview)

**Initializer**

# init(preferredCompactColumn:sidebar:content:detail:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates a three-column navigation split view that enables programmatic control over which column appears on top when the view collapses into a single column in narrow sizes.

```swift
nonisolated init(preferredCompactColumn: Binding<NavigationSplitViewColumn>, @ViewBuilder sidebar: () -> Sidebar, @ViewBuilder content: () -> Content, @ViewBuilder detail: () -> Detail)
```

## Parameters

**preferredCompactColumn**

A [Binding](/documentation/swiftui/binding) to state that controls which column appears on top when the view collapses.



**sidebar**

The view to show in the leading column.



**content**

The view to show in the middle column.



**detail**

The view to show in the detail area.



## Specifying a preferred compact column

- [init(preferredCompactColumn:sidebar:detail:)](/documentation/swiftui/navigationsplitview/init(preferredcompactcolumn:sidebar:detail:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
