---
title: softLight
description: A mode that either darkens or lightens colors, depending on the source image sample color.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/blendmode-swift.struct/softlight
timestamp: 2025-10-29T00:09:41.432Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [blendmode-swift.struct](/documentation/swiftui/graphicscontext/blendmode-swift.struct)

**Type Property**

# softLight

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A mode that either darkens or lightens colors, depending on the source image sample color.

```swift
static var softLight: GraphicsContext.BlendMode { get }
```

## Discussion

If the source image sample color is lighter than 50% gray, the background is lightened, similar to dodging. If the source image sample color is darker than 50% gray, the background is darkened, similar to burning. If the source image sample color is equal to 50% gray, the background is not changed. Image samples that are equal to pure black or pure white produce darker or lighter areas, but do not result in pure black or white. The overall effect is similar to what you’d achieve by shining a diffuse spotlight on the source image. Use this to add highlights to a scene.

## Adding contrast

- [overlay](/documentation/swiftui/graphicscontext/blendmode-swift.struct/overlay)
- [hardLight](/documentation/swiftui/graphicscontext/blendmode-swift.struct/hardlight)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
