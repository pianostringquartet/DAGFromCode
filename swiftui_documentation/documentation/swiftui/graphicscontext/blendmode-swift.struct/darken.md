---
title: darken
description: A mode that creates composite image samples by choosing the darker samples from either the source image or the background.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/blendmode-swift.struct/darken
timestamp: 2025-10-29T00:11:17.337Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [blendmode-swift.struct](/documentation/swiftui/graphicscontext/blendmode-swift.struct)

**Type Property**

# darken

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A mode that creates composite image samples by choosing the darker samples from either the source image or the background.

```swift
static var darken: GraphicsContext.BlendMode { get }
```

## Discussion

When you draw in this mode, source image samples that are darker than the background replace the background. Otherwise, the background image samples remain unchanged.

## Darkening

- [multiply](/documentation/swiftui/graphicscontext/blendmode-swift.struct/multiply)
- [colorBurn](/documentation/swiftui/graphicscontext/blendmode-swift.struct/colorburn)
- [plusDarker](/documentation/swiftui/graphicscontext/blendmode-swift.struct/plusdarker)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
