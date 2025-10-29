---
title: Path.Element.curve(to:control1:control2:)
description: A cubic Bézier curve from the previous current point to the given end-point, using the two control points to define the curve.
source: https://developer.apple.com/documentation/swiftui/path/element/curve(to:control1:control2:)
timestamp: 2025-10-29T00:12:59.195Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [path](/documentation/swiftui/path) › [element](/documentation/swiftui/path/element)

**Case**

# Path.Element.curve(to:control1:control2:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A cubic Bézier curve from the previous current point to the given end-point, using the two control points to define the curve.

```swift
case curve(to: CGPoint, control1: CGPoint, control2: CGPoint)
```

## Discussion

The end-point of the curve becomes the new current point.

## Getting path elements

- [Path.Element.closeSubpath](/documentation/swiftui/path/element/closesubpath)
- [Path.Element.line(to:)](/documentation/swiftui/path/element/line(to:))
- [Path.Element.move(to:)](/documentation/swiftui/path/element/move(to:))
- [Path.Element.quadCurve(to:control:)](/documentation/swiftui/path/element/quadcurve(to:control:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
