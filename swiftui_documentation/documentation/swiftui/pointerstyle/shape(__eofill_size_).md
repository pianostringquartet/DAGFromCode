---
title: shape(_:eoFill:size:)
description: Initializes a pointer style with a given shape.
source: https://developer.apple.com/documentation/swiftui/pointerstyle/shape(_:eofill:size:)
timestamp: 2025-10-29T00:10:25.105Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [pointerstyle](/documentation/swiftui/pointerstyle)

**Type Method**

# shape(_:eoFill:size:)

**Available on:** visionOS 2.0+

> Initializes a pointer style with a given shape.

```swift
static func shape(_ shape: some Shape, eoFill: Bool = false, size: CGSize) -> PointerStyle
```

## Parameters

**shape**

The pointer shape.



**eoFill**

A Boolean that indicates whether the shape is interpreted with the even-odd winding number rule.



**size**

The size of the pointer shape.



## Discussion

For guidance on using a custom pointer, refer to [pointing](/design/Human-Interface-Guidelines/pointing-devices) in the Human Interface Guidelines.

You may apply this pointer style to a single view or a view hierarchy using the [pointerStyle(_:)](/documentation/swiftui/view/pointerstyle(_:)) modifier.

## Creating custom pointer styles

- [image(_:hotSpot:)](/documentation/swiftui/pointerstyle/image(_:hotspot:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
