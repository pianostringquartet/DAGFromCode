---
title: difference
description: A mode that subtracts the brighter of the source image sample color or the background image sample color from the other.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/blendmode-swift.struct/difference
timestamp: 2025-10-29T00:10:40.821Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [blendmode-swift.struct](/documentation/swiftui/graphicscontext/blendmode-swift.struct)

**Type Property**

# difference

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A mode that subtracts the brighter of the source image sample color or the background image sample color from the other.

```swift
static var difference: GraphicsContext.BlendMode { get }
```

## Discussion

Source image sample values that are black produce no change; white inverts the background color values.

## Inverting

- [exclusion](/documentation/swiftui/graphicscontext/blendmode-swift.struct/exclusion)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
