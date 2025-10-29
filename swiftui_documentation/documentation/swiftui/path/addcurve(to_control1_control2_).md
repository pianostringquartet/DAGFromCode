---
title: addCurve(to:control1:control2:)
description: Adds a cubic Bézier curve to the path, with the specified end point and control points.
source: https://developer.apple.com/documentation/swiftui/path/addcurve(to:control1:control2:)
timestamp: 2025-10-29T00:14:49.681Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [path](/documentation/swiftui/path)

**Instance Method**

# addCurve(to:control1:control2:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Adds a cubic Bézier curve to the path, with the specified end point and control points.

```swift
mutating func addCurve(to end: CGPoint, control1: CGPoint, control2: CGPoint)
```

## Parameters

**control1**

The first control point of the curve, in user space coordinates.



**control2**

The second control point of the curve, in user space coordinates.



## Discussion

This method constructs a curve starting from the path’s current point and ending at the specified end point, with curvature defined by the two control points. After this method appends that curve to the current path, the end point of the curve becomes the path’s current point.

## Drawing a path

- [move(to:)](/documentation/swiftui/path/move(to:))
- [addArc(center:radius:startAngle:endAngle:clockwise:transform:)](/documentation/swiftui/path/addarc(center:radius:startangle:endangle:clockwise:transform:))
- [addArc(tangent1End:tangent2End:radius:transform:)](/documentation/swiftui/path/addarc(tangent1end:tangent2end:radius:transform:))
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
