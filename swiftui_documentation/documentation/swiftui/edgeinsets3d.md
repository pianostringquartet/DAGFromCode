---
title: EdgeInsets3D
description: The inset distances for the faces of a 3D volume.
source: https://developer.apple.com/documentation/swiftui/edgeinsets3d
timestamp: 2025-10-29T00:13:53.931Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# EdgeInsets3D

**Available on:** visionOS 1.0+

> The inset distances for the faces of a 3D volume.

```swift
@frozen struct EdgeInsets3D
```

## Conforms To

- [Animatable](/documentation/swiftui/animatable)
- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting edge insets

- [top](/documentation/swiftui/edgeinsets3d/top) The inset distance along the top face of a 3D volume.
- [bottom](/documentation/swiftui/edgeinsets3d/bottom) The inset distance along the bottom face of a 3D volume.
- [leading](/documentation/swiftui/edgeinsets3d/leading) The inset distance along the leading face of a 3D volume.
- [trailing](/documentation/swiftui/edgeinsets3d/trailing) The inset distance along the top trailing of a 3D volume.
- [front](/documentation/swiftui/edgeinsets3d/front) The inset distance along the top front of a 3D volume.
- [back](/documentation/swiftui/edgeinsets3d/back) The inset distance along the top back of a 3D volume.

## Creating an edge inset

- [init(horizontal:vertical:depth:)](/documentation/swiftui/edgeinsets3d/init(horizontal:vertical:depth:)) Creates an  value with values provided for each axis.
- [init(top:leading:bottom:trailing:front:back:)](/documentation/swiftui/edgeinsets3d/init(top:leading:bottom:trailing:front:back:)) Creates an  value with values provided for each face.

## Accessing edges, regions, and layouts

- [Edge](/documentation/swiftui/edge)
- [Edge3D](/documentation/swiftui/edge3d)
- [HorizontalEdge](/documentation/swiftui/horizontaledge)
- [VerticalEdge](/documentation/swiftui/verticaledge)
- [EdgeInsets](/documentation/swiftui/edgeinsets)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
