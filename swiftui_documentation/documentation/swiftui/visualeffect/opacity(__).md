---
title: opacity(_:)
description: Sets the transparency of the view.
source: https://developer.apple.com/documentation/swiftui/visualeffect/opacity(_:)
timestamp: 2025-10-29T00:11:13.436Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [visualeffect](/documentation/swiftui/visualeffect)

**Instance Method**

# opacity(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Sets the transparency of the view.

```swift
func opacity(_ opacity: Double) -> some VisualEffect
```

## Parameters

**opacity**

A value between 0 (fully transparent) and 1 (fully opaque).



## Return Value

An effect that sets the transparency of the view.

## Discussion

When applying the `opacity(_:)` effect to a view that has already had its opacity transformed, the effect of the underlying opacity transformation is multiplied.

## Adjusting Color

- [brightness(_:)](/documentation/swiftui/visualeffect/brightness(_:))
- [colorEffect(_:isEnabled:)](/documentation/swiftui/visualeffect/coloreffect(_:isenabled:))
- [contrast(_:)](/documentation/swiftui/visualeffect/contrast(_:))
- [grayscale(_:)](/documentation/swiftui/visualeffect/grayscale(_:))
- [hueRotation(_:)](/documentation/swiftui/visualeffect/huerotation(_:))
- [saturation(_:)](/documentation/swiftui/visualeffect/saturation(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
