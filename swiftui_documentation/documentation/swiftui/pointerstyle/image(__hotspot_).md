---
title: image(_:hotSpot:)
description: Initializes a pointer style with a given image and hot spot.
source: https://developer.apple.com/documentation/swiftui/pointerstyle/image(_:hotspot:)
timestamp: 2025-10-29T00:10:46.354Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [pointerstyle](/documentation/swiftui/pointerstyle)

**Type Method**

# image(_:hotSpot:)

**Available on:** macOS 15.0+

> Initializes a pointer style with a given image and hot spot.

```swift
static func image(_ image: Image, hotSpot: UnitPoint) -> PointerStyle
```

## Parameters

**image**

The pointer image.



**hotSpot**

The point on the image that represents the location from which the pointer interaction occurs. For example, the hot spot of an arrow-shaped pointer is the tip of the arrow.



## Discussion

The hot spot is the part of the pointer that must be positioned over an onscreen element for clicking to have an effect.

For guidance on using a custom pointer, refer to [pointing](/design/Human-Interface-Guidelines/pointing-devices) in the Human Interface Guidelines.

You may apply this pointer style to a single view or a view hierarchy using the [pointerStyle(_:)](/documentation/swiftui/view/pointerstyle(_:)) modifier.

## Creating custom pointer styles

- [shape(_:eoFill:size:)](/documentation/swiftui/pointerstyle/shape(_:eofill:size:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
