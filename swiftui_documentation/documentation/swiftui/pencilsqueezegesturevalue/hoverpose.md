---
title: hoverPose
description: The location and distance of an Apple Pencil hovering in the area above the view’s bounds when the squeeze gesture occurred.
source: https://developer.apple.com/documentation/swiftui/pencilsqueezegesturevalue/hoverpose
timestamp: 2025-10-29T00:11:48.245Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [pencilsqueezegesturevalue](/documentation/swiftui/pencilsqueezegesturevalue)

**Instance Property**

# hoverPose

**Available on:** iOS 17.5+, iPadOS 17.5+, Mac Catalyst 17.5+, macOS 14.5+

> The location and distance of an Apple Pencil hovering in the area above the view’s bounds when the squeeze gesture occurred.

```swift
let hoverPose: PencilHoverPose?
```

## Discussion

If the Apple Pencil was hovering in the area above the view’s bounds when the user squeezed their Apple Pencil, this property describes its pose relative to that view.

Conversely, if the Apple Pencil wasn’t hovering in the area above the view’s bounds or if the device can’t detect a hovering Apple Pencil, this property is `nil`.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
