---
title: addRect(_:transform:)
description: Adds a rectangular subpath to the path.
source: https://developer.apple.com/documentation/swiftui/path/addrect(_:transform:)
timestamp: 2025-10-29T00:11:15.955Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [path](/documentation/swiftui/path)

**Instance Method**

# addRect(_:transform:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Adds a rectangular subpath to the path.

```swift
mutating func addRect(_ rect: CGRect, transform: CGAffineTransform = .identity)
```

## Parameters

**rect**

A rectangle, specified in user space coordinates.



**transform**

An affine transform to apply to the rectangle before adding to the path. Defaults to the identity transform if not specified.



## Discussion

This is a convenience function that adds a rectangle to a path, starting by moving to the bottom-left corner and then adding lines counter-clockwise to create a rectangle, closing the subpath.

## Drawing a path

- [move(to:)](/documentation/swiftui/path/move(to:))
- [addArc(center:radius:startAngle:endAngle:clockwise:transform:)](/documentation/swiftui/path/addarc(center:radius:startangle:endangle:clockwise:transform:))
- [addArc(tangent1End:tangent2End:radius:transform:)](/documentation/swiftui/path/addarc(tangent1end:tangent2end:radius:transform:))
- [addCurve(to:control1:control2:)](/documentation/swiftui/path/addcurve(to:control1:control2:))
- [addEllipse(in:transform:)](/documentation/swiftui/path/addellipse(in:transform:))
- [addLine(to:)](/documentation/swiftui/path/addline(to:))
- [addLines(_:)](/documentation/swiftui/path/addlines(_:))
- [addPath(_:transform:)](/documentation/swiftui/path/addpath(_:transform:))
- [addQuadCurve(to:control:)](/documentation/swiftui/path/addquadcurve(to:control:))
- [addRects(_:transform:)](/documentation/swiftui/path/addrects(_:transform:))
- [addRelativeArc(center:radius:startAngle:delta:transform:)](/documentation/swiftui/path/addrelativearc(center:radius:startangle:delta:transform:))
- [addRoundedRect(in:cornerSize:style:transform:)](/documentation/swiftui/path/addroundedrect(in:cornersize:style:transform:))
- [closeSubpath()](/documentation/swiftui/path/closesubpath())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
