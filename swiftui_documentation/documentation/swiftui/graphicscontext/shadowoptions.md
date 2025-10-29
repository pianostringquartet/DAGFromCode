---
title: GraphicsContext.ShadowOptions
description: Options that configure the graphics context filter that creates shadows.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/shadowoptions
timestamp: 2025-10-29T00:09:33.663Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Structure**

# GraphicsContext.ShadowOptions

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Options that configure the graphics context filter that creates shadows.

```swift
@frozen struct ShadowOptions
```

## Overview

You can use a set of these options when you call [shadow(color:radius:x:y:blendMode:options:)](/documentation/swiftui/graphicscontext/filter/shadow(color:radius:x:y:blendmode:options:)) to create a [Filter](/documentation/swiftui/graphicscontext/filter) that adds a drop shadow to an object that you draw into a [Graphics Context](/documentation/swiftui/graphicscontext).

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

## Getting shadow options

- [disablesGroup](/documentation/swiftui/graphicscontext/shadowoptions/disablesgroup) An option that causes the filter to composite the object and its shadow separately in the current layer.
- [invertsAlpha](/documentation/swiftui/graphicscontext/shadowoptions/invertsalpha) An option that causes the filter to invert the alpha of the shadow.
- [shadowAbove](/documentation/swiftui/graphicscontext/shadowoptions/shadowabove) An option that causes the filter to draw the shadow above the object, rather than below it.
- [shadowOnly](/documentation/swiftui/graphicscontext/shadowoptions/shadowonly) An option that causes the filter to draw only the shadow, and omit the source object.

## Filtering

- [addFilter(_:options:)](/documentation/swiftui/graphicscontext/addfilter(_:options:))
- [GraphicsContext.Filter](/documentation/swiftui/graphicscontext/filter)
- [GraphicsContext.FilterOptions](/documentation/swiftui/graphicscontext/filteroptions)
- [GraphicsContext.BlurOptions](/documentation/swiftui/graphicscontext/bluroptions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
