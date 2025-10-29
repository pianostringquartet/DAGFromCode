---
title: init(x:y:z:)
description: Creates a 3D unit point with the specified offsets.
source: https://developer.apple.com/documentation/swiftui/unitpoint3d/init(x:y:z:)
timestamp: 2025-10-29T00:13:55.811Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [unitpoint3d](/documentation/swiftui/unitpoint3d)

**Initializer**

# init(x:y:z:)

**Available on:** visionOS 1.0+

> Creates a 3D unit point with the specified offsets.

```swift
init(x: CGFloat, y: CGFloat, z: CGFloat)
```

## Parameters

**x**

The normalized distance from the origin to the point in the horizontal dimension.



**y**

The normalized distance from the origin to the point in the vertical dimension.



**z**

The normalized distance from the origin to the point in the depth dimension.



## Discussion

Values outside the range `[0, 1]` project to points outside of a view.

## Creating a point

- [init()](/documentation/swiftui/unitpoint3d/init())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
