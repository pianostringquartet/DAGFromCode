---
title: grayscale(_:)
description: Adds a grayscale effect to the view.
source: https://developer.apple.com/documentation/swiftui/visualeffect/grayscale(_:)
timestamp: 2025-10-29T00:14:10.848Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [visualeffect](/documentation/swiftui/visualeffect)

**Instance Method**

# grayscale(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Adds a grayscale effect to the view.

```swift
func grayscale(_ amount: Double) -> some VisualEffect
```

## Parameters

**amount**

The intensity of grayscale to apply from 0.0 to less than 1.0. Values closer to 0.0 are more colorful, and values closer to 1.0 are less colorful.



## Return Value

An effect that reduces the intensity of colors in the view.

## Discussion

A grayscale effect reduces the intensity of colors in the view.

## Adjusting Color

- [brightness(_:)](/documentation/swiftui/visualeffect/brightness(_:))
- [colorEffect(_:isEnabled:)](/documentation/swiftui/visualeffect/coloreffect(_:isenabled:))
- [contrast(_:)](/documentation/swiftui/visualeffect/contrast(_:))
- [hueRotation(_:)](/documentation/swiftui/visualeffect/huerotation(_:))
- [saturation(_:)](/documentation/swiftui/visualeffect/saturation(_:))
- [opacity(_:)](/documentation/swiftui/visualeffect/opacity(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
