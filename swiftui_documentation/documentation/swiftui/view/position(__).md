---
title: position(_:)
description: Positions the center of this view at the specified point in its parent’s coordinate space.
source: https://developer.apple.com/documentation/swiftui/view/position(_:)
timestamp: 2025-10-29T00:11:56.667Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# position(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Positions the center of this view at the specified point in its parent’s coordinate space.

```swift
nonisolated func position(_ position: CGPoint) -> some View
```

## Parameters

**position**

The point at which to place the center of this view.



## Return Value

A view that fixes the center of this view at `position`.

## Discussion

Use the `position(_:)` modifier to place the center of a view at a specific coordinate in the parent view using a [CGPoint](/documentation/CoreFoundation/CGPoint) to specify the `x` and `y` offset.

```swift
Text("Position by passing a CGPoint()")
    .position(CGPoint(x: 175, y: 100))
    .border(Color.gray)
```

## Adjusting a view’s position

- [Making fine adjustments to a view’s position](/documentation/swiftui/making-fine-adjustments-to-a-view-s-position)
- [position(x:y:)](/documentation/swiftui/view/position(x:y:))
- [offset(_:)](/documentation/swiftui/view/offset(_:))
- [offset(x:y:)](/documentation/swiftui/view/offset(x:y:))
- [offset(z:)](/documentation/swiftui/view/offset(z:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
