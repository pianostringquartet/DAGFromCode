---
title: GraphicsContext.ClipOptions
description: Options that affect the use of clip shapes.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/clipoptions
timestamp: 2025-10-29T00:11:02.633Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Structure**

# GraphicsContext.ClipOptions

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Options that affect the use of clip shapes.

```swift
@frozen struct ClipOptions
```

## Overview

Use these options to affect how SwiftUI interprets a clip shape when you call [clip(to:style:options:)](/documentation/swiftui/graphicscontext/clip(to:style:options:)) to add a path to the array of clip shapes, or when you call [clipToLayer(opacity:options:content:)](/documentation/swiftui/graphicscontext/cliptolayer(opacity:options:content:)) to add a clipping layer.

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

## Getting clip options

- [inverse](/documentation/swiftui/graphicscontext/clipoptions/inverse) An option to invert the shape or layer alpha as the clip mask.

## Masking

- [clip(to:style:options:)](/documentation/swiftui/graphicscontext/clip(to:style:options:))
- [clipToLayer(opacity:options:content:)](/documentation/swiftui/graphicscontext/cliptolayer(opacity:options:content:))
- [clipBoundingRect](/documentation/swiftui/graphicscontext/clipboundingrect)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
