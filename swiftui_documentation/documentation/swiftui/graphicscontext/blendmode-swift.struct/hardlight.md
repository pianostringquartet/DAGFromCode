---
title: hardLight
description: A mode that either multiplies or screens colors, depending on the source image sample color.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/blendmode-swift.struct/hardlight
timestamp: 2025-10-29T00:14:35.885Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [blendmode-swift.struct](/documentation/swiftui/graphicscontext/blendmode-swift.struct)

**Type Property**

# hardLight

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A mode that either multiplies or screens colors, depending on the source image sample color.

```swift
static var hardLight: GraphicsContext.BlendMode { get }
```

## Discussion

If the source image sample color is lighter than 50% gray, the background is lightened, similar to screening. If the source image sample color is darker than 50% gray, the background is darkened, similar to multiplying. If the source image sample color is equal to 50% gray, the source image is not changed. Image samples that are equal to pure black or pure white result in pure black or white. The overall effect is similar to what you’d achieve by shining a harsh spotlight on the source image. Use this to add highlights to a scene.

## Adding contrast

- [overlay](/documentation/swiftui/graphicscontext/blendmode-swift.struct/overlay)
- [softLight](/documentation/swiftui/graphicscontext/blendmode-swift.struct/softlight)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
