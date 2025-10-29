---
title: init(_:content:)
description: Creates a new instance that’s scrollable in the direction of the given axis and can show indicators while scrolling.
source: https://developer.apple.com/documentation/swiftui/scrollview/init(_:content:)
timestamp: 2025-10-29T00:14:34.834Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scrollview](/documentation/swiftui/scrollview)

**Initializer**

# init(_:content:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a new instance that’s scrollable in the direction of the given axis and can show indicators while scrolling.

```swift
nonisolated init(_ axes: Axis.Set = .vertical, @ViewBuilder content: () -> Content)
```

## Parameters

**axes**

The scroll view’s scrollable axis. The default axis is the vertical axis.



**content**

The view builder that creates the scrollable view.



## Creating a scroll view

- [init(_:showsIndicators:content:)](/documentation/swiftui/scrollview/init(_:showsindicators:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
