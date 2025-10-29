---
title: blur(radius:opaque:)
description: Applies a Gaussian blur to the view.
source: https://developer.apple.com/documentation/swiftui/visualeffect/blur(radius:opaque:)
timestamp: 2025-10-29T00:10:11.668Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [visualeffect](/documentation/swiftui/visualeffect)

**Instance Method**

# blur(radius:opaque:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Applies a Gaussian blur to the view.

```swift
func blur(radius: CGFloat, opaque: Bool = false) -> some VisualEffect
```

## Parameters

**radius**

The radial size of the blur. A blur is more diffuse when its radius is large.



**opaque**

A Boolean value that indicates whether the blur renderer permits transparency in the blur output. Set to `true` to create an opaque blur, or set to `false` to permit transparency.



## Return Value

An effect that blurs the view.

## Discussion

Use `blur(radius:opaque:)` to apply a gaussian blur effect to the rendering of the view.

## Applying other effects

- [distortionEffect(_:maxSampleOffset:isEnabled:)](/documentation/swiftui/visualeffect/distortioneffect(_:maxsampleoffset:isenabled:))
- [layerEffect(_:maxSampleOffset:isEnabled:)](/documentation/swiftui/visualeffect/layereffect(_:maxsampleoffset:isenabled:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
