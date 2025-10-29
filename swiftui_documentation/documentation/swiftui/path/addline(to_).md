---
title: addLine(to:)
description: Appends a straight line segment from the current point to the specified point.
source: https://developer.apple.com/documentation/swiftui/path/addline(to:)
timestamp: 2025-10-29T00:11:19.913Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [path](/documentation/swiftui/path)

**Instance Method**

# addLine(to:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Appends a straight line segment from the current point to the specified point.

```swift
mutating func addLine(to end: CGPoint)
```

## Parameters

**end**

The location, in user space coordinates, for the end of the new line segment.



## Discussion

After adding the line segment, the current point is set to the endpoint of the line segment.

## Drawing a path

- [move(to:)](/documentation/swiftui/path/move(to:))
- [addArc(center:radius:startAngle:endAngle:clockwise:transform:)](/documentation/swiftui/path/addarc(center:radius:startangle:endangle:clockwise:transform:))
- [addArc(tangent1End:tangent2End:radius:transform:)](/documentation/swiftui/path/addarc(tangent1end:tangent2end:radius:transform:))
- [addCurve(to:control1:control2:)](/documentation/swiftui/path/addcurve(to:control1:control2:))
- [addEllipse(in:transform:)](/documentation/swiftui/path/addellipse(in:transform:))
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
