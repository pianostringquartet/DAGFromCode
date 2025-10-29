---
title: boundingRect
description: A rectangle containing all path segments.
source: https://developer.apple.com/documentation/swiftui/path/boundingrect
timestamp: 2025-10-29T00:13:47.346Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [path](/documentation/swiftui/path)

**Instance Property**

# boundingRect

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A rectangle containing all path segments.

```swift
var boundingRect: CGRect { get }
```

## Discussion

This is the smallest rectangle completely enclosing all points in the path but not including control points for Bézier curves.

## Getting the path’s characteristics

- [cgPath](/documentation/swiftui/path/cgpath)
- [contains(_:eoFill:)](/documentation/swiftui/path/contains(_:eofill:))
- [currentPoint](/documentation/swiftui/path/currentpoint)
- [description](/documentation/swiftui/path/description)
- [isEmpty](/documentation/swiftui/path/isempty)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
