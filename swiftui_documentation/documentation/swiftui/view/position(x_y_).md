---
title: position(x:y:)
description: Positions the center of this view at the specified coordinates in its parent’s coordinate space.
source: https://developer.apple.com/documentation/swiftui/view/position(x:y:)
timestamp: 2025-10-29T00:10:09.066Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# position(x:y:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Positions the center of this view at the specified coordinates in its parent’s coordinate space.

```swift
nonisolated func position(x: CGFloat = 0, y: CGFloat = 0) -> some View
```

## Parameters

**x**

The x-coordinate at which to place the center of this view.



**y**

The y-coordinate at which to place the center of this view.



## Return Value

A view that fixes the center of this view at `x` and `y`.

## Discussion

Use the `position(x:y:)` modifier to place the center of a view at a specific coordinate in the parent view using an `x` and `y` offset.

```swift
Text("Position by passing the x and y coordinates")
    .position(x: 175, y: 100)
    .border(Color.gray)
```

## Adjusting a view’s position

- [Making fine adjustments to a view’s position](/documentation/swiftui/making-fine-adjustments-to-a-view-s-position)
- [position(_:)](/documentation/swiftui/view/position(_:))
- [offset(_:)](/documentation/swiftui/view/offset(_:))
- [offset(x:y:)](/documentation/swiftui/view/offset(x:y:))
- [offset(z:)](/documentation/swiftui/view/offset(z:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
