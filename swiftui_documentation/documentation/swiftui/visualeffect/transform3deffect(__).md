---
title: transform3DEffect(_:)
description: Applies a 3D transformation to this view’s rendered output.
source: https://developer.apple.com/documentation/swiftui/visualeffect/transform3deffect(_:)
timestamp: 2025-10-29T00:12:46.471Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [visualeffect](/documentation/swiftui/visualeffect)

**Instance Method**

# transform3DEffect(_:)

**Available on:** visionOS 1.0+

> Applies a 3D transformation to this view’s rendered output.

```swift
func transform3DEffect(_ transform: AffineTransform3D) -> some VisualEffect
```

## Parameters

**transform**

The 3D transformation to apply to the view, interpreting it as a 3D plane in space.



## Return Value

An effect that renders transformed according to the provided `transform`

### Apply a transform about an anchor

This does not adjust the transform relative to an anchor point. Instead, apply the scale and rotation separately using [scaleEffect(_:anchor:)](/documentation/swiftui/view/scaleeffect(_:anchor:)) together with [rotation3DEffect(_:anchor:)](/documentation/swiftui/view/rotation3deffect(_:anchor:)).

```swift
Model3D(url: URL(string: "https://example.com/robot.usdz")!)
   .scaleEffect(transform.scale)
   .rotation3DEffect(transform.rotation ?? .identity)
   .transform3DEffect(AffineTransform3D(
       translation: transform.translation))
```

## Applying a transform

- [transformEffect(_:)](/documentation/swiftui/visualeffect/transformeffect(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
