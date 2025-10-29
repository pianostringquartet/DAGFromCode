---
title: Path.Element.quadCurve(to:control:)
description: A quadratic Bézier curve from the previous current point to the given end-point, using the single control point to define the curve.
source: https://developer.apple.com/documentation/swiftui/path/element/quadcurve(to:control:)
timestamp: 2025-10-29T00:11:32.893Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [path](/documentation/swiftui/path) › [element](/documentation/swiftui/path/element)

**Case**

# Path.Element.quadCurve(to:control:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A quadratic Bézier curve from the previous current point to the given end-point, using the single control point to define the curve.

```swift
case quadCurve(to: CGPoint, control: CGPoint)
```

## Discussion

The end-point of the curve becomes the new current point.

## Getting path elements

- [Path.Element.closeSubpath](/documentation/swiftui/path/element/closesubpath)
- [Path.Element.curve(to:control1:control2:)](/documentation/swiftui/path/element/curve(to:control1:control2:))
- [Path.Element.line(to:)](/documentation/swiftui/path/element/line(to:))
- [Path.Element.move(to:)](/documentation/swiftui/path/element/move(to:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
