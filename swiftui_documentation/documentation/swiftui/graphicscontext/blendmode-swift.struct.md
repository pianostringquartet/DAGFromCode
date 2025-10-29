---
title: GraphicsContext.BlendMode
description: The ways that a graphics context combines new content with background content.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/blendmode-swift.struct
timestamp: 2025-10-29T00:12:47.013Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Structure**

# GraphicsContext.BlendMode

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The ways that a graphics context combines new content with background content.

```swift
@frozen struct BlendMode
```

## Overview

Use one of these values to set the [blend Mode-swift.property](/documentation/swiftui/graphicscontext/blendmode-swift.property) property of a [Graphics Context](/documentation/swiftui/graphicscontext). The value that you set affects how content that you draw replaces or combines with content that you previously drew into the context.

## Conforms To

- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [RawRepresentable](/documentation/Swift/RawRepresentable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting the default

- [normal](/documentation/swiftui/graphicscontext/blendmode-swift.struct/normal) A mode that paints source image samples over the background image samples.

## Darkening

- [darken](/documentation/swiftui/graphicscontext/blendmode-swift.struct/darken) A mode that creates composite image samples by choosing the darker samples from either the source image or the background.
- [multiply](/documentation/swiftui/graphicscontext/blendmode-swift.struct/multiply) A mode that multiplies the source image samples with the background image samples.
- [colorBurn](/documentation/swiftui/graphicscontext/blendmode-swift.struct/colorburn) A mode that darkens background image samples to reflect the source image samples.
- [plusDarker](/documentation/swiftui/graphicscontext/blendmode-swift.struct/plusdarker) A mode that adds the inverse of the color components of the source and background images, and then inverts the result, producing a darkened composite.

## Lightening

- [lighten](/documentation/swiftui/graphicscontext/blendmode-swift.struct/lighten) A mode that creates composite image samples by choosing the lighter samples from either the source image or the background.
- [screen](/documentation/swiftui/graphicscontext/blendmode-swift.struct/screen) A mode that multiplies the inverse of the source image samples with the inverse of the background image samples.
- [colorDodge](/documentation/swiftui/graphicscontext/blendmode-swift.struct/colordodge) A mode that brightens the background image samples to reflect the source image samples.
- [plusLighter](/documentation/swiftui/graphicscontext/blendmode-swift.struct/pluslighter) A mode that adds the components of the source and background images, resulting in a lightened composite.

## Adding contrast

- [overlay](/documentation/swiftui/graphicscontext/blendmode-swift.struct/overlay) A mode that either multiplies or screens the source image samples with the background image samples, depending on the background color.
- [softLight](/documentation/swiftui/graphicscontext/blendmode-swift.struct/softlight) A mode that either darkens or lightens colors, depending on the source image sample color.
- [hardLight](/documentation/swiftui/graphicscontext/blendmode-swift.struct/hardlight) A mode that either multiplies or screens colors, depending on the source image sample color.

## Inverting

- [difference](/documentation/swiftui/graphicscontext/blendmode-swift.struct/difference) A mode that subtracts the brighter of the source image sample color or the background image sample color from the other.
- [exclusion](/documentation/swiftui/graphicscontext/blendmode-swift.struct/exclusion) A mode that produces an effect similar to that produced by the difference blend mode, but with lower contrast.

## Mixing color components

- [hue](/documentation/swiftui/graphicscontext/blendmode-swift.struct/hue) A mode that uses the luminance and saturation values of the background with the hue of the source image.
- [saturation](/documentation/swiftui/graphicscontext/blendmode-swift.struct/saturation) A mode that uses the luminance and hue values of the background with the saturation of the source image.
- [color](/documentation/swiftui/graphicscontext/blendmode-swift.struct/color) A mode that uses the luminance values of the background with the hue and saturation values of the source image.
- [luminosity](/documentation/swiftui/graphicscontext/blendmode-swift.struct/luminosity) A mode that uses the hue and saturation of the background with the luminance of the source image.

## Accessing porter-duff modes

- [clear](/documentation/swiftui/graphicscontext/blendmode-swift.struct/clear) A mode that clears any pixels that the source image overwrites.
- [copy](/documentation/swiftui/graphicscontext/blendmode-swift.struct/copy) A mode that replaces background image samples with source image samples.
- [sourceIn](/documentation/swiftui/graphicscontext/blendmode-swift.struct/sourcein) A mode that you use to paint the source image, including its transparency, onto the opaque parts of the background.
- [sourceOut](/documentation/swiftui/graphicscontext/blendmode-swift.struct/sourceout) A mode that you use to paint the source image onto the transparent parts of the background, while erasing the background.
- [sourceAtop](/documentation/swiftui/graphicscontext/blendmode-swift.struct/sourceatop) A mode that you use to paint the opaque parts of the source image onto the opaque parts of the background.
- [destinationOver](/documentation/swiftui/graphicscontext/blendmode-swift.struct/destinationover) A mode that you use to paint the source image under the background.
- [destinationIn](/documentation/swiftui/graphicscontext/blendmode-swift.struct/destinationin) A mode that you use to erase any of the background that isn’t covered by opaque source pixels.
- [destinationOut](/documentation/swiftui/graphicscontext/blendmode-swift.struct/destinationout) A mode that you use to erase any of the background that is covered by opaque source pixels.
- [destinationAtop](/documentation/swiftui/graphicscontext/blendmode-swift.struct/destinationatop) A mode that you use to paint the source image under the background, while erasing any of the background not matched by opaque pixels from the source image.
- [xor](/documentation/swiftui/graphicscontext/blendmode-swift.struct/xor) A mode that you use to clear pixels where both the source and background images are opaque.

## Setting opacity and the blend mode

- [opacity](/documentation/swiftui/graphicscontext/opacity)
- [blendMode](/documentation/swiftui/graphicscontext/blendmode-swift.property)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
