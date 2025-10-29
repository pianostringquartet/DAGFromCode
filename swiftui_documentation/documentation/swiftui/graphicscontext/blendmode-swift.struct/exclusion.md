---
title: exclusion
description: A mode that produces an effect similar to that produced by the difference blend mode, but with lower contrast.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/blendmode-swift.struct/exclusion
timestamp: 2025-10-29T00:12:11.028Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [blendmode-swift.struct](/documentation/swiftui/graphicscontext/blendmode-swift.struct)

**Type Property**

# exclusion

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A mode that produces an effect similar to that produced by the difference blend mode, but with lower contrast.

```swift
static var exclusion: GraphicsContext.BlendMode { get }
```

## Discussion

Source image sample values that are black don’t produce a change; white inverts the background color values.

## Inverting

- [difference](/documentation/swiftui/graphicscontext/blendmode-swift.struct/difference)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
