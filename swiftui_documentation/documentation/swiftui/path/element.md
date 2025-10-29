---
title: Path.Element
description: An element of a path.
source: https://developer.apple.com/documentation/swiftui/path/element
timestamp: 2025-10-29T00:12:12.702Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [path](/documentation/swiftui/path)

**Enumeration**

# Path.Element

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> An element of a path.

```swift
@frozen enum Element
```

## Conforms To

- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting path elements

- [Path.Element.closeSubpath](/documentation/swiftui/path/element/closesubpath) A line from the start point of the current subpath (if any) to the current point, which terminates the subpath.
- [Path.Element.curve(to:control1:control2:)](/documentation/swiftui/path/element/curve(to:control1:control2:)) A cubic Bézier curve from the previous current point to the given end-point, using the two control points to define the curve.
- [Path.Element.line(to:)](/documentation/swiftui/path/element/line(to:)) A line from the previous current point to the given point, which becomes the new current point.
- [Path.Element.move(to:)](/documentation/swiftui/path/element/move(to:)) A path element that terminates the current subpath (without closing it) and defines a new current point.
- [Path.Element.quadCurve(to:control:)](/documentation/swiftui/path/element/quadcurve(to:control:)) A quadratic Bézier curve from the previous current point to the given end-point, using the single control point to define the curve.

## Operating over path elements

- [forEach(_:)](/documentation/swiftui/path/foreach(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
