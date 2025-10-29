---
title: lineSubtraction(_:eoFill:)
description: Returns a new shape with a line from this shape that does not overlap the filled region of the given shape.
source: https://developer.apple.com/documentation/swiftui/shape/linesubtraction(_:eofill:)
timestamp: 2025-10-29T00:11:58.991Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shape](/documentation/swiftui/shape)

**Instance Method**

# lineSubtraction(_:eoFill:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Returns a new shape with a line from this shape that does not overlap the filled region of the given shape.

```swift
nonisolated func lineSubtraction<T>(_ other: T, eoFill: Bool = false) -> some Shape where T : Shape
```

## Parameters

**other**

The shape to subtract.



**eoFill**

Whether to use the even-odd rule for determining which areas to treat as the interior of the shapes (if true), or the non-zero rule (if false).



## Return Value

A new shape.

## Discussion

The line of the resulting shape is the line of this shape that does not overlap the filled region of `other`.

Intersected subpaths that are clipped create open subpaths. Closed subpaths that do not intersect `other` remain closed.

## Performing operations on a shape

- [intersection(_:eoFill:)](/documentation/swiftui/shape/intersection(_:eofill:))
- [lineIntersection(_:eoFill:)](/documentation/swiftui/shape/lineintersection(_:eofill:))
- [subtracting(_:eoFill:)](/documentation/swiftui/shape/subtracting(_:eofill:))
- [symmetricDifference(_:eoFill:)](/documentation/swiftui/shape/symmetricdifference(_:eofill:))
- [union(_:eoFill:)](/documentation/swiftui/shape/union(_:eofill:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
