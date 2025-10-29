---
title: saturation
description: A mode that uses the luminance and hue values of the background with the saturation of the source image.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/blendmode-swift.struct/saturation
timestamp: 2025-10-29T00:14:57.317Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [blendmode-swift.struct](/documentation/swiftui/graphicscontext/blendmode-swift.struct)

**Type Property**

# saturation

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A mode that uses the luminance and hue values of the background with the saturation of the source image.

```swift
static var saturation: GraphicsContext.BlendMode { get }
```

## Discussion

Areas of the background that have no saturation — namely, pure gray areas — don’t produce a change.

## Mixing color components

- [hue](/documentation/swiftui/graphicscontext/blendmode-swift.struct/hue)
- [color](/documentation/swiftui/graphicscontext/blendmode-swift.struct/color)
- [luminosity](/documentation/swiftui/graphicscontext/blendmode-swift.struct/luminosity)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
