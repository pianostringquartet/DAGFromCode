---
title: color
description: A mode that uses the luminance values of the background with the hue and saturation values of the source image.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/blendmode-swift.struct/color
timestamp: 2025-10-29T00:11:32.811Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [blendmode-swift.struct](/documentation/swiftui/graphicscontext/blendmode-swift.struct)

**Type Property**

# color

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A mode that uses the luminance values of the background with the hue and saturation values of the source image.

```swift
static var color: GraphicsContext.BlendMode { get }
```

## Discussion

This mode preserves the gray levels in the image. You can use this mode to color monochrome images or to tint color images.

## Mixing color components

- [hue](/documentation/swiftui/graphicscontext/blendmode-swift.struct/hue)
- [saturation](/documentation/swiftui/graphicscontext/blendmode-swift.struct/saturation)
- [luminosity](/documentation/swiftui/graphicscontext/blendmode-swift.struct/luminosity)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
