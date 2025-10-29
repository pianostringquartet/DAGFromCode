---
title: offset(_:)
description: Offset this view by the horizontal and vertical amount specified in the offset parameter.
source: https://developer.apple.com/documentation/swiftui/view/offset(_:)
timestamp: 2025-10-29T00:11:42.582Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# offset(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Offset this view by the horizontal and vertical amount specified in the offset parameter.

```swift
nonisolated func offset(_ offset: CGSize) -> some View
```

## Parameters

**offset**

The distance to offset this view.



## Return Value

A view that offsets this view by `offset`.

## Discussion

Use `offset(_:)` to shift the displayed contents by the amount specified in the `offset` parameter.

The original dimensions of the view aren’t changed by offsetting the contents; in the example below the gray border drawn by this view surrounds the original position of the text:

```swift
Text("Offset by passing CGSize()")
    .border(Color.green)
    .offset(CGSize(width: 20, height: 25))
    .border(Color.gray)
```



## Adjusting a view’s position

- [Making fine adjustments to a view’s position](/documentation/swiftui/making-fine-adjustments-to-a-view-s-position)
- [position(_:)](/documentation/swiftui/view/position(_:))
- [position(x:y:)](/documentation/swiftui/view/position(x:y:))
- [offset(x:y:)](/documentation/swiftui/view/offset(x:y:))
- [offset(z:)](/documentation/swiftui/view/offset(z:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
