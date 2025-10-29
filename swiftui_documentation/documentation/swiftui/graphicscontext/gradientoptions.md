---
title: GraphicsContext.GradientOptions
description: Options that affect the rendering of color gradients.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/gradientoptions
timestamp: 2025-10-29T00:09:33.815Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Structure**

# GraphicsContext.GradientOptions

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Options that affect the rendering of color gradients.

```swift
@frozen struct GradientOptions
```

## Overview

Use these options to affect how SwiftUI manages a gradient that you create for a [Shading](/documentation/swiftui/graphicscontext/shading) instance for use in a [Graphics Context](/documentation/swiftui/graphicscontext).

## Conforms To

- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [ExpressibleByArrayLiteral](/documentation/Swift/ExpressibleByArrayLiteral)
- [OptionSet](/documentation/Swift/OptionSet)
- [RawRepresentable](/documentation/Swift/RawRepresentable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [SetAlgebra](/documentation/Swift/SetAlgebra)

## Getting gradient options

- [linearColor](/documentation/swiftui/graphicscontext/gradientoptions/linearcolor) An option that interpolates between colors in a linear color space.
- [mirror](/documentation/swiftui/graphicscontext/gradientoptions/mirror) An option that repeats the gradient outside its nominal range, reflecting every other instance.
- [repeat](/documentation/swiftui/graphicscontext/gradientoptions/repeat) An option that repeats the gradient outside its nominal range.

## Drawing a path

- [stroke(_:with:lineWidth:)](/documentation/swiftui/graphicscontext/stroke(_:with:linewidth:))
- [stroke(_:with:style:)](/documentation/swiftui/graphicscontext/stroke(_:with:style:))
- [fill(_:with:style:)](/documentation/swiftui/graphicscontext/fill(_:with:style:))
- [GraphicsContext.Shading](/documentation/swiftui/graphicscontext/shading)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
