---
title: BlendMode
description: Modes for compositing a view with overlapping content.
source: https://developer.apple.com/documentation/swiftui/blendmode
timestamp: 2025-10-29T00:11:39.632Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Enumeration**

# BlendMode

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Modes for compositing a view with overlapping content.

```swift
enum BlendMode
```

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting the default

- [BlendMode.normal](/documentation/swiftui/blendmode/normal)

## Darkening

- [BlendMode.darken](/documentation/swiftui/blendmode/darken)
- [BlendMode.multiply](/documentation/swiftui/blendmode/multiply)
- [BlendMode.colorBurn](/documentation/swiftui/blendmode/colorburn)
- [BlendMode.plusDarker](/documentation/swiftui/blendmode/plusdarker)

## Lightening

- [BlendMode.lighten](/documentation/swiftui/blendmode/lighten)
- [BlendMode.screen](/documentation/swiftui/blendmode/screen)
- [BlendMode.colorDodge](/documentation/swiftui/blendmode/colordodge)
- [BlendMode.plusLighter](/documentation/swiftui/blendmode/pluslighter)

## Adding contrast

- [BlendMode.overlay](/documentation/swiftui/blendmode/overlay)
- [BlendMode.softLight](/documentation/swiftui/blendmode/softlight)
- [BlendMode.hardLight](/documentation/swiftui/blendmode/hardlight)

## Inverting

- [BlendMode.difference](/documentation/swiftui/blendmode/difference)
- [BlendMode.exclusion](/documentation/swiftui/blendmode/exclusion)

## Mixing color components

- [BlendMode.hue](/documentation/swiftui/blendmode/hue)
- [BlendMode.saturation](/documentation/swiftui/blendmode/saturation)
- [BlendMode.color](/documentation/swiftui/blendmode/color)
- [BlendMode.luminosity](/documentation/swiftui/blendmode/luminosity)

## Accessing porter-duff modes

- [BlendMode.sourceAtop](/documentation/swiftui/blendmode/sourceatop)
- [BlendMode.destinationOver](/documentation/swiftui/blendmode/destinationover)
- [BlendMode.destinationOut](/documentation/swiftui/blendmode/destinationout)

## Compositing views

- [blendMode(_:)](/documentation/swiftui/view/blendmode(_:))
- [compositingGroup()](/documentation/swiftui/view/compositinggroup())
- [drawingGroup(opaque:colorMode:)](/documentation/swiftui/view/drawinggroup(opaque:colormode:))
- [ColorRenderingMode](/documentation/swiftui/colorrenderingmode)
- [CompositorContent](/documentation/swiftui/compositorcontent)
- [CompositorContentBuilder](/documentation/swiftui/compositorcontentbuilder)
- [AnyCompositorContent](/documentation/swiftui/anycompositorcontent)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
