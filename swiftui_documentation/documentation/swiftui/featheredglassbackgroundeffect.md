---
title: FeatheredGlassBackgroundEffect
description: The feathered glass background effect.
source: https://developer.apple.com/documentation/swiftui/featheredglassbackgroundeffect
timestamp: 2025-10-29T00:13:56.888Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# FeatheredGlassBackgroundEffect

**Available on:** visionOS 2.4+

> The feathered glass background effect.

```swift
struct FeatheredGlassBackgroundEffect
```

## Overview

You can also use [feathered](/documentation/swiftui/glassbackgroundeffect/feathered) to construct this effect.

The layout size of a view with feathered glass background is based on the content size instead of the glass background size. When the glass background is clipped by an outer container, such as VStack or HStack, it can be resolved by incrasing content size, such as content padding, or reducing the feathered glass background size with its padding parameter.

## Conforms To

- [GlassBackgroundEffect](/documentation/swiftui/glassbackgroundeffect)

## Initializers

- [init()](/documentation/swiftui/featheredglassbackgroundeffect/init()) Creates a feathered glassBackground effect.
- [init(padding:softEdgeRadius:)](/documentation/swiftui/featheredglassbackgroundeffect/init(padding:softedgeradius:)) Creates a feathered glassBackground effect.

## Adding a glass background on views in visionOS

- [glassBackgroundEffect(displayMode:)](/documentation/swiftui/view/glassbackgroundeffect(displaymode:))
- [glassBackgroundEffect(in:displayMode:)](/documentation/swiftui/view/glassbackgroundeffect(in:displaymode:))
- [GlassBackgroundDisplayMode](/documentation/swiftui/glassbackgrounddisplaymode)
- [GlassBackgroundEffect](/documentation/swiftui/glassbackgroundeffect)
- [AutomaticGlassBackgroundEffect](/documentation/swiftui/automaticglassbackgroundeffect)
- [GlassBackgroundEffectConfiguration](/documentation/swiftui/glassbackgroundeffectconfiguration)
- [PlateGlassBackgroundEffect](/documentation/swiftui/plateglassbackgroundeffect)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
