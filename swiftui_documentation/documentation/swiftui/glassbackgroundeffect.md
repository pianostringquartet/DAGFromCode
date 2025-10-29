---
title: GlassBackgroundEffect
description: A specification for the appearance of a glass background.
source: https://developer.apple.com/documentation/swiftui/glassbackgroundeffect
timestamp: 2025-10-29T00:09:53.084Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# GlassBackgroundEffect

**Available on:** visionOS 2.4+

> A specification for the appearance of a glass background.

```swift
protocol GlassBackgroundEffect
```

## Conforming Types

- [AutomaticGlassBackgroundEffect](/documentation/swiftui/automaticglassbackgroundeffect)
- [FeatheredGlassBackgroundEffect](/documentation/swiftui/featheredglassbackgroundeffect)
- [PlateGlassBackgroundEffect](/documentation/swiftui/plateglassbackgroundeffect)

## Associated Types

- [Body](/documentation/swiftui/glassbackgroundeffect/body) The type of effect representing the body of this effect. When you create a custom effect, Swift infers this type from your implementation of the required  method.

## Instance Methods

- [makeBody(configuration:)](/documentation/swiftui/glassbackgroundeffect/makebody(configuration:)) Defines the effect produced by this effect.

## Type Aliases

- [GlassBackgroundEffect.Configuration](/documentation/swiftui/glassbackgroundeffect/configuration) The configuration type passed to .

## Type Properties

- [automatic](/documentation/swiftui/glassbackgroundeffect/automatic) The default glass background effect, based on the glass’s context.
- [feathered](/documentation/swiftui/glassbackgroundeffect/feathered) A feathered background effect with default padding amount and default soft edge radiual size.
- [plate](/documentation/swiftui/glassbackgroundeffect/plate) A plate glass background effect.

## Type Methods

- [feathered(padding:softEdgeRadius:)](/documentation/swiftui/glassbackgroundeffect/feathered(padding:softedgeradius:)) A feathered background effect with custom padding and soft edge radius.

## Adding a glass background on views in visionOS

- [glassBackgroundEffect(displayMode:)](/documentation/swiftui/view/glassbackgroundeffect(displaymode:))
- [glassBackgroundEffect(in:displayMode:)](/documentation/swiftui/view/glassbackgroundeffect(in:displaymode:))
- [GlassBackgroundDisplayMode](/documentation/swiftui/glassbackgrounddisplaymode)
- [AutomaticGlassBackgroundEffect](/documentation/swiftui/automaticglassbackgroundeffect)
- [GlassBackgroundEffectConfiguration](/documentation/swiftui/glassbackgroundeffectconfiguration)
- [FeatheredGlassBackgroundEffect](/documentation/swiftui/featheredglassbackgroundeffect)
- [PlateGlassBackgroundEffect](/documentation/swiftui/plateglassbackgroundeffect)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
