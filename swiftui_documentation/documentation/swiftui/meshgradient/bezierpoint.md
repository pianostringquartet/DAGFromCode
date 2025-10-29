---
title: MeshGradient.BezierPoint
description: One location in a gradient mesh, along with the four Bezier control points surrounding it.
source: https://developer.apple.com/documentation/swiftui/meshgradient/bezierpoint
timestamp: 2025-10-29T00:12:54.620Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [meshgradient](/documentation/swiftui/meshgradient)

**Structure**

# MeshGradient.BezierPoint

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> One location in a gradient mesh, along with the four Bezier control points surrounding it.

```swift
@frozen struct BezierPoint
```

## Conforms To

- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Initializers

- [init(position:leadingControlPoint:topControlPoint:trailingControlPoint:bottomControlPoint:)](/documentation/swiftui/meshgradient/bezierpoint/init(position:leadingcontrolpoint:topcontrolpoint:trailingcontrolpoint:bottomcontrolpoint:)) Creates a new vertex.

## Instance Properties

- [bottomControlPoint](/documentation/swiftui/meshgradient/bezierpoint/bottomcontrolpoint) The Bezier control point of the vertex’s bottom edge.
- [leadingControlPoint](/documentation/swiftui/meshgradient/bezierpoint/leadingcontrolpoint) The Bezier control point of the vertex’s leading edge.
- [position](/documentation/swiftui/meshgradient/bezierpoint/position) The position of the vertex.
- [topControlPoint](/documentation/swiftui/meshgradient/bezierpoint/topcontrolpoint) The Bezier control point of the vertex’s top edge.
- [trailingControlPoint](/documentation/swiftui/meshgradient/bezierpoint/trailingcontrolpoint) The Bezier control point of the vertex’s trailing edge.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
