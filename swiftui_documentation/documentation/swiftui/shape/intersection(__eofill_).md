---
title: intersection(_:eoFill:)
description: Returns a new shape with filled regions common to both shapes.
source: https://developer.apple.com/documentation/swiftui/shape/intersection(_:eofill:)
timestamp: 2025-10-29T00:11:58.028Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shape](/documentation/swiftui/shape)

**Instance Method**

# intersection(_:eoFill:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Returns a new shape with filled regions common to both shapes.

```swift
nonisolated func intersection<T>(_ other: T, eoFill: Bool = false) -> some Shape where T : Shape
```

## Parameters

**other**

The shape to intersect.



**eoFill**

Whether to use the even-odd rule for determining which areas to treat as the interior of the shapes (if true), or the non-zero rule (if false).



## Return Value

A new shape.

## Discussion

The filled region of the resulting shape is the overlapping area of the filled region of both shapes.  This can be used to clip the fill of a shape to a mask.

Any unclosed subpaths in either shape are assumed to be closed. The result of filling this shape using either even-odd or non-zero fill rules is identical.

## Performing operations on a shape

- [lineIntersection(_:eoFill:)](/documentation/swiftui/shape/lineintersection(_:eofill:))
- [lineSubtraction(_:eoFill:)](/documentation/swiftui/shape/linesubtraction(_:eofill:))
- [subtracting(_:eoFill:)](/documentation/swiftui/shape/subtracting(_:eofill:))
- [symmetricDifference(_:eoFill:)](/documentation/swiftui/shape/symmetricdifference(_:eofill:))
- [union(_:eoFill:)](/documentation/swiftui/shape/union(_:eofill:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
