---
title: GraphicsContext.BlurOptions
description: Options that configure the graphics context filter that creates blur.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/bluroptions
timestamp: 2025-10-29T00:11:32.607Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Structure**

# GraphicsContext.BlurOptions

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Options that configure the graphics context filter that creates blur.

```swift
@frozen struct BlurOptions
```

## Overview

You can use a set of these options when you call [blur(radius:options:)](/documentation/swiftui/graphicscontext/filter/blur(radius:options:)) to create a [Filter](/documentation/swiftui/graphicscontext/filter) that adds blur to an object that you draw into a [Graphics Context](/documentation/swiftui/graphicscontext).

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

## Getting blur options

- [dithersResult](/documentation/swiftui/graphicscontext/bluroptions/dithersresult) An option that causes the filter to dither the result, to reduce banding.
- [opaque](/documentation/swiftui/graphicscontext/bluroptions/opaque) An option that causes the filter to ensure the result is completely opaque.

## Filtering

- [addFilter(_:options:)](/documentation/swiftui/graphicscontext/addfilter(_:options:))
- [GraphicsContext.Filter](/documentation/swiftui/graphicscontext/filter)
- [GraphicsContext.FilterOptions](/documentation/swiftui/graphicscontext/filteroptions)
- [GraphicsContext.ShadowOptions](/documentation/swiftui/graphicscontext/shadowoptions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
