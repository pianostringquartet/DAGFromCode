---
title: invertsAlpha
description: An option that causes the filter to invert the alpha of the shadow.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/shadowoptions/invertsalpha
timestamp: 2025-10-29T00:11:51.054Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [shadowoptions](/documentation/swiftui/graphicscontext/shadowoptions)

**Type Property**

# invertsAlpha

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> An option that causes the filter to invert the alpha of the shadow.

```swift
static var invertsAlpha: GraphicsContext.ShadowOptions { get }
```

## Discussion

You can create an “inner shadow” effect by combining this option with [shadow Above](/documentation/swiftui/graphicscontext/shadowoptions/shadowabove) and using the [source Atop](/documentation/swiftui/graphicscontext/blendmode-swift.struct/sourceatop) blend mode.

## Getting shadow options

- [disablesGroup](/documentation/swiftui/graphicscontext/shadowoptions/disablesgroup)
- [shadowAbove](/documentation/swiftui/graphicscontext/shadowoptions/shadowabove)
- [shadowOnly](/documentation/swiftui/graphicscontext/shadowoptions/shadowonly)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
