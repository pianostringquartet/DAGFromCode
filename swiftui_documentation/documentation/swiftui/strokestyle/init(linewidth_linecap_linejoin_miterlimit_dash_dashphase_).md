---
title: init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)
description: Creates a new stroke style from the given components.
source: https://developer.apple.com/documentation/swiftui/strokestyle/init(linewidth:linecap:linejoin:miterlimit:dash:dashphase:)
timestamp: 2025-10-29T00:15:35.367Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [strokestyle](/documentation/swiftui/strokestyle)

**Initializer**

# init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a new stroke style from the given components.

```swift
init(lineWidth: CGFloat = 1, lineCap: CGLineCap = .butt, lineJoin: CGLineJoin = .miter, miterLimit: CGFloat = 10, dash: [CGFloat] = [CGFloat](), dashPhase: CGFloat = 0)
```

## Parameters

**lineWidth**

The width of the segment.



**lineCap**

The endpoint style of a segment.



**lineJoin**

The join type of a segment.



**miterLimit**

The threshold used to determine whether to use a bevel instead of a miter at a join.



**dash**

The lengths of painted and unpainted segments used to make a dashed line.



**dashPhase**

How far into the dash pattern the line starts.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
