---
title: overlay
description: A mode that either multiplies or screens the source image samples with the background image samples, depending on the background color.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/blendmode-swift.struct/overlay
timestamp: 2025-10-29T00:12:20.488Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [blendmode-swift.struct](/documentation/swiftui/graphicscontext/blendmode-swift.struct)

**Type Property**

# overlay

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A mode that either multiplies or screens the source image samples with the background image samples, depending on the background color.

```swift
static var overlay: GraphicsContext.BlendMode { get }
```

## Discussion

Drawing in this mode overlays the existing image samples while preserving the highlights and shadows of the background. The background color mixes with the source image to reflect the lightness or darkness of the background.

## Adding contrast

- [softLight](/documentation/swiftui/graphicscontext/blendmode-swift.struct/softlight)
- [hardLight](/documentation/swiftui/graphicscontext/blendmode-swift.struct/hardlight)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
