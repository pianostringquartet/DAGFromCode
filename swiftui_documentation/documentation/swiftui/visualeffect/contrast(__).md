---
title: contrast(_:)
description: Sets the contrast and separation between similar colors in the view.
source: https://developer.apple.com/documentation/swiftui/visualeffect/contrast(_:)
timestamp: 2025-10-29T00:15:15.685Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [visualeffect](/documentation/swiftui/visualeffect)

**Instance Method**

# contrast(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Sets the contrast and separation between similar colors in the view.

```swift
func contrast(_ amount: Double) -> some VisualEffect
```

## Parameters

**amount**

The intensity of color contrast to apply. negative values invert colors in addition to applying contrast.



## Return Value

An effect that applies color contrast to the view.

## Discussion

Apply contrast to a view to increase or decrease the separation between similar colors in the view.

## Adjusting Color

- [brightness(_:)](/documentation/swiftui/visualeffect/brightness(_:))
- [colorEffect(_:isEnabled:)](/documentation/swiftui/visualeffect/coloreffect(_:isenabled:))
- [grayscale(_:)](/documentation/swiftui/visualeffect/grayscale(_:))
- [hueRotation(_:)](/documentation/swiftui/visualeffect/huerotation(_:))
- [saturation(_:)](/documentation/swiftui/visualeffect/saturation(_:))
- [opacity(_:)](/documentation/swiftui/visualeffect/opacity(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
