---
title: ColorRenderingMode
description: The set of possible working color spaces for color-compositing operations.
source: https://developer.apple.com/documentation/swiftui/colorrenderingmode
timestamp: 2025-10-29T00:13:47.787Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Enumeration**

# ColorRenderingMode

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The set of possible working color spaces for color-compositing operations.

```swift
enum ColorRenderingMode
```

## Overview

Each color space guarantees the preservation of a particular range of color values.

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting rendering modes

- [ColorRenderingMode.extendedLinear](/documentation/swiftui/colorrenderingmode/extendedlinear) The extended linear sRGB working color space.
- [ColorRenderingMode.linear](/documentation/swiftui/colorrenderingmode/linear) The linear sRGB working color space.
- [ColorRenderingMode.nonLinear](/documentation/swiftui/colorrenderingmode/nonlinear) The non-linear sRGB working color space.

## Compositing views

- [blendMode(_:)](/documentation/swiftui/view/blendmode(_:))
- [compositingGroup()](/documentation/swiftui/view/compositinggroup())
- [drawingGroup(opaque:colorMode:)](/documentation/swiftui/view/drawinggroup(opaque:colormode:))
- [BlendMode](/documentation/swiftui/blendmode)
- [CompositorContent](/documentation/swiftui/compositorcontent)
- [CompositorContentBuilder](/documentation/swiftui/compositorcontentbuilder)
- [AnyCompositorContent](/documentation/swiftui/anycompositorcontent)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
