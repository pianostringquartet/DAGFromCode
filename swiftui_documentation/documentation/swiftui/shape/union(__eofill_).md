---
title: union(_:eoFill:)
description: Returns a new shape with filled regions in either this shape or the given shape.
source: https://developer.apple.com/documentation/swiftui/shape/union(_:eofill:)
timestamp: 2025-10-29T00:12:24.100Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shape](/documentation/swiftui/shape)

**Instance Method**

# union(_:eoFill:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Returns a new shape with filled regions in either this shape or the given shape.

```swift
nonisolated func union<T>(_ other: T, eoFill: Bool = false) -> some Shape where T : Shape
```

## Parameters

**other**

The shape to union.



**eoFill**

Whether to use the even-odd rule for determining which areas to treat as the interior of the shapes (if true), or the non-zero rule (if false).



## Return Value

A new shape.

## Discussion

The filled region of resulting shape is the combination of the filled region of both shapes added together.

Any unclosed subpaths in either shape are assumed to be closed. The result of filling this shape using either even-odd or non-zero fill rules is identical.

## Performing operations on a shape

- [intersection(_:eoFill:)](/documentation/swiftui/shape/intersection(_:eofill:))
- [lineIntersection(_:eoFill:)](/documentation/swiftui/shape/lineintersection(_:eofill:))
- [lineSubtraction(_:eoFill:)](/documentation/swiftui/shape/linesubtraction(_:eofill:))
- [subtracting(_:eoFill:)](/documentation/swiftui/shape/subtracting(_:eofill:))
- [symmetricDifference(_:eoFill:)](/documentation/swiftui/shape/symmetricdifference(_:eofill:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
