---
title: init(_:showsIndicators:content:)
description: Creates a new instance that’s scrollable in the direction of the given axis and can show indicators while scrolling.
source: https://developer.apple.com/documentation/swiftui/scrollview/init(_:showsindicators:content:)
timestamp: 2025-10-29T00:14:36.382Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scrollview](/documentation/swiftui/scrollview)

**Initializer**

# init(_:showsIndicators:content:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a new instance that’s scrollable in the direction of the given axis and can show indicators while scrolling.

```swift
init(_ axes: Axis.Set = .vertical, showsIndicators: Bool = true, @ViewBuilder content: () -> Content)
```

## Parameters

**axes**

The scroll view’s scrollable axis. The default axis is the vertical axis.



**showsIndicators**

A Boolean value that indicates whether the scroll view displays the scrollable component of the content offset, in a way suitable for the platform. The default value for this parameter is `true`.



**content**

The view builder that creates the scrollable view.



## Creating a scroll view

- [init(_:content:)](/documentation/swiftui/scrollview/init(_:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
