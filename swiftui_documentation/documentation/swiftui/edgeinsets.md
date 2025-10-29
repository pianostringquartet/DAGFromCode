---
title: EdgeInsets
description: The inset distances for the sides of a rectangle.
source: https://developer.apple.com/documentation/swiftui/edgeinsets
timestamp: 2025-10-29T00:14:01.828Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# EdgeInsets

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The inset distances for the sides of a rectangle.

```swift
@frozen struct EdgeInsets
```

## Conforms To

- [Animatable](/documentation/swiftui/animatable)
- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting edge insets

- [top](/documentation/swiftui/edgeinsets/top)
- [bottom](/documentation/swiftui/edgeinsets/bottom)
- [leading](/documentation/swiftui/edgeinsets/leading)
- [trailing](/documentation/swiftui/edgeinsets/trailing)

## Creating an edge inset

- [init()](/documentation/swiftui/edgeinsets/init())
- [init(top:leading:bottom:trailing:)](/documentation/swiftui/edgeinsets/init(top:leading:bottom:trailing:))
- [init(_:)](/documentation/swiftui/edgeinsets/init(_:)) Creates a 2D  from an , dropping its  and  values.

## Instance Methods

- [inset(by:edges:)](/documentation/swiftui/edgeinsets/inset(by:edges:)) Returns an inset that has been modified by the corner sizes in the specified edges. When two corner insets diverge in their values for the specified edge, the maximum inset value will be used. For example, when the top edge is specified, the top inset will be adjusted by the larger of the two heights from the top leading and trailing corner inset sizes.

## Accessing edges, regions, and layouts

- [Edge](/documentation/swiftui/edge)
- [Edge3D](/documentation/swiftui/edge3d)
- [HorizontalEdge](/documentation/swiftui/horizontaledge)
- [VerticalEdge](/documentation/swiftui/verticaledge)
- [EdgeInsets3D](/documentation/swiftui/edgeinsets3d)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
