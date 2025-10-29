---
title: init(x:y:)
description: Creates a unit point with the specified horizontal and vertical offsets.
source: https://developer.apple.com/documentation/swiftui/unitpoint/init(x:y:)
timestamp: 2025-10-29T00:09:15.541Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [unitpoint](/documentation/swiftui/unitpoint)

**Initializer**

# init(x:y:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a unit point with the specified horizontal and vertical offsets.

```swift
init(x: CGFloat, y: CGFloat)
```

## Parameters

**x**

The normalized distance from the origin to the point in the horizontal direction.



**y**

The normalized distance from the origin to the point in the vertical direction.



## Discussion

Values outside the range `[0, 1]` project to points outside of a view.

## Creating a point

- [init()](/documentation/swiftui/unitpoint/init())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
