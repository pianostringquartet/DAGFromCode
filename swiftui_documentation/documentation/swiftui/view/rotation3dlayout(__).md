---
title: rotation3DLayout(_:)
description: Rotates a view with impacts to its frame in a containing layout
source: https://developer.apple.com/documentation/swiftui/view/rotation3dlayout(_:)
timestamp: 2025-10-29T00:11:25.225Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# rotation3DLayout(_:)

**Available on:** visionOS 26.0+

> Rotates a view with impacts to its frame in a containing layout

```swift
nonisolated func rotation3DLayout(_ rotation: Rotation3D) -> some View
```

## Parameters

**rotation**

A rotation to apply to the view and its frame.



## Discussion

The following example will rotate the top plane by 45 degrees while adjusting its frame to account for this rotation. The VStack sizes to fit the rotated and standard models.

```swift
VStack {
    Model3D(named: "plane")
        .rotation3DLayout(Rotation3D(angle: .degrees(45), axis: .z))
    Model3D(named: "plane")
```

}

The layout system will use a bounding box that completely contains the rotated view, meaning this modifier can change the size of the view it is applied to.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
