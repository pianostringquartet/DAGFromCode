---
title: addArc(tangent1End:tangent2End:radius:transform:)
description: Adds an arc of a circle to the path, specified with a radius and two tangent lines.
source: https://developer.apple.com/documentation/swiftui/path/addarc(tangent1end:tangent2end:radius:transform:)
timestamp: 2025-10-29T00:10:06.732Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [path](/documentation/swiftui/path)

**Instance Method**

# addArc(tangent1End:tangent2End:radius:transform:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Adds an arc of a circle to the path, specified with a radius and two tangent lines.

```swift
mutating func addArc(tangent1End: CGPoint, tangent2End: CGPoint, radius: CGFloat, transform: CGAffineTransform = .identity)
```

## Parameters

**tangent1End**

The end point, in user space coordinates, for the first tangent line to be used in constructing the arc. (The start point for this tangent line is the path’s current point.)



**tangent2End**

The end point, in user space coordinates, for the second tangent line to be used in constructing the arc. (The start point for this tangent line is the tangent1End point.)



**radius**

The radius of the arc, in user space coordinates.



**transform**

An affine transform to apply to the arc before adding to the path. Defaults to the identity transform if not specified.



## Discussion

This method calculates two tangent lines—the first from the current point to the tangent1End point, and the second from the `tangent1End` point to the `tangent2End` point—then calculates the start and end points for a circular arc of the specified radius such that the arc is tangent to both lines. Finally, this method approximates that arc with a sequence of cubic Bézier curves and appends those curves to the path.

If the starting point of the arc (that is, the point where a circle of the specified radius must meet the first tangent line in order to also be tangent to the second line) is not the current point, this method appends a straight line segment from the current point to the starting point of the arc.

The ending point of the arc (that is, the point where a circle of the specified radius must meet the second tangent line in order to also be tangent to the first line) becomes the new current point of the path.

## Drawing a path

- [move(to:)](/documentation/swiftui/path/move(to:))
- [addArc(center:radius:startAngle:endAngle:clockwise:transform:)](/documentation/swiftui/path/addarc(center:radius:startangle:endangle:clockwise:transform:))
- [addCurve(to:control1:control2:)](/documentation/swiftui/path/addcurve(to:control1:control2:))
- [addEllipse(in:transform:)](/documentation/swiftui/path/addellipse(in:transform:))
- [addLine(to:)](/documentation/swiftui/path/addline(to:))
- [addLines(_:)](/documentation/swiftui/path/addlines(_:))
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
