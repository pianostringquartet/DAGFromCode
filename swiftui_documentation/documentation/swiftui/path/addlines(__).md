---
title: addLines(_:)
description: Adds a sequence of connected straight-line segments to the path.
source: https://developer.apple.com/documentation/swiftui/path/addlines(_:)
timestamp: 2025-10-29T00:15:31.521Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [path](/documentation/swiftui/path)

**Instance Method**

# addLines(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Adds a sequence of connected straight-line segments to the path.

```swift
mutating func addLines(_ lines: [CGPoint])
```

## Discussion

Calling this convenience method is equivalent to applying the transform to all points in the array, then calling the `move(to:)` method with the first value in the `points` array, then calling the `addLine(to:)` method for each subsequent point until the array is exhausted. After calling this method, the path’s current point is the last point in the array.

- Parameter:

- lines: An array of values that specify the start and end points of the line segments to draw. Each point in the array specifies a position in user space. The first point in the array specifies the initial starting point.
- transform: An affine transform to apply to the points before adding to the path. Defaults to the identity transform if not specified.

## Drawing a path

- [move(to:)](/documentation/swiftui/path/move(to:))
- [addArc(center:radius:startAngle:endAngle:clockwise:transform:)](/documentation/swiftui/path/addarc(center:radius:startangle:endangle:clockwise:transform:))
- [addArc(tangent1End:tangent2End:radius:transform:)](/documentation/swiftui/path/addarc(tangent1end:tangent2end:radius:transform:))
- [addCurve(to:control1:control2:)](/documentation/swiftui/path/addcurve(to:control1:control2:))
- [addEllipse(in:transform:)](/documentation/swiftui/path/addellipse(in:transform:))
- [addLine(to:)](/documentation/swiftui/path/addline(to:))
- [addPath(_:transform:)](/documentation/swiftui/path/addpath(_:transform:))
- [addQuadCurve(to:control:)](/documentation/swiftui/path/addquadcurve(to:control:))
- [addRect(_:transform:)](/documentation/swiftui/path/addrect(_:transform:))
- [addRects(_:transform:)](/documentation/swiftui/path/addrects(_:transform:))
- [addRelativeArc(center:radius:startAngle:delta:transform:)](/documentation/swiftui/path/addrelativearc(center:radius:startangle:delta:transform:))
- [addRoundedRect(in:cornerSize:style:transform:)](/documentation/swiftui/path/addroundedrect(in:cornersize:style:transform:))
- [closeSubpath()](/documentation/swiftui/path/closesubpath())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
