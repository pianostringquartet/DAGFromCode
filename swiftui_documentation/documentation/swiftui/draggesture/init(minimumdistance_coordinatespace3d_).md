---
title: init(minimumDistance:coordinateSpace3D:)
description: Creates a dragging gesture with the minimum dragging distance before the gesture succeeds and the coordinate space of the gesture’s location.
source: https://developer.apple.com/documentation/swiftui/draggesture/init(minimumdistance:coordinatespace3d:)
timestamp: 2025-10-29T00:13:24.497Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [draggesture](/documentation/swiftui/draggesture)

**Initializer**

# init(minimumDistance:coordinateSpace3D:)

**Available on:** visionOS 26.0+

> Creates a dragging gesture with the minimum dragging distance before the gesture succeeds and the coordinate space of the gesture’s location.

```swift
init(minimumDistance: CGFloat = 0, coordinateSpace3D: some CoordinateSpace3D)
```

## Parameters

**minimumDistance**

The minimum dragging distance for the gesture to succeed. Ensure this unit is in the same scale as the provided `CoordinateSpace3D`, the default value is 0 to avoid issues around differing coordinate space scales.



**coordinateSpace3D**

The coordinate space 3D of the dragging gesture’s location.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
