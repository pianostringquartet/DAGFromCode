---
title: GraphicsContext.FilterOptions
description: Options that configure a filter that you add to a graphics context.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/filteroptions
timestamp: 2025-10-29T00:10:15.132Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Structure**

# GraphicsContext.FilterOptions

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Options that configure a filter that you add to a graphics context.

```swift
@frozen struct FilterOptions
```

## Overview

You can use filter options to configure a [Filter](/documentation/swiftui/graphicscontext/filter) that you apply to a [Graphics Context](/documentation/swiftui/graphicscontext) with the [addFilter(_:options:)](/documentation/swiftui/graphicscontext/addfilter(_:options:)) method.

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

## Getting filter options

- [linearColor](/documentation/swiftui/graphicscontext/filteroptions/linearcolor) An option that causes the filter to perform calculations in a linear color space.

## Filtering

- [addFilter(_:options:)](/documentation/swiftui/graphicscontext/addfilter(_:options:))
- [GraphicsContext.Filter](/documentation/swiftui/graphicscontext/filter)
- [GraphicsContext.BlurOptions](/documentation/swiftui/graphicscontext/bluroptions)
- [GraphicsContext.ShadowOptions](/documentation/swiftui/graphicscontext/shadowoptions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
