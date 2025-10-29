---
title: offset(x:y:)
description: Offset this view by the specified horizontal and vertical distances.
source: https://developer.apple.com/documentation/swiftui/view/offset(x:y:)
timestamp: 2025-10-29T00:15:28.378Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# offset(x:y:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Offset this view by the specified horizontal and vertical distances.

```swift
nonisolated func offset(x: CGFloat = 0, y: CGFloat = 0) -> some View
```

## Parameters

**x**

The horizontal distance to offset this view.



**y**

The vertical distance to offset this view.



## Return Value

A view that offsets this view by `x` and `y`.

## Discussion

Use `offset(x:y:)` to shift the displayed contents by the amount specified in the `x` and `y` parameters.

The original dimensions of the view aren’t changed by offsetting the contents; in the example below the gray border drawn by this view surrounds the original position of the text:

```swift
Text("Offset by passing horizontal & vertical distance")
    .border(Color.green)
    .offset(x: 20, y: 50)
    .border(Color.gray)
```



## Adjusting a view’s position

- [Making fine adjustments to a view’s position](/documentation/swiftui/making-fine-adjustments-to-a-view-s-position)
- [position(_:)](/documentation/swiftui/view/position(_:))
- [position(x:y:)](/documentation/swiftui/view/position(x:y:))
- [offset(_:)](/documentation/swiftui/view/offset(_:))
- [offset(z:)](/documentation/swiftui/view/offset(z:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
