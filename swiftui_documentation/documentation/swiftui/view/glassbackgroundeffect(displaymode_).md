---
title: glassBackgroundEffect(displayMode:)
description: Fills the view’s background with an automatic glass background effect and container-relative rounded rectangle shape.
source: https://developer.apple.com/documentation/swiftui/view/glassbackgroundeffect(displaymode:)
timestamp: 2025-10-29T00:10:47.211Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# glassBackgroundEffect(displayMode:)

**Available on:** visionOS 1.0+

> Fills the view’s background with an automatic glass background effect and container-relative rounded rectangle shape.

```swift
nonisolated func glassBackgroundEffect(displayMode: GlassBackgroundDisplayMode = .always) -> some View
```

## Parameters

**displayMode**

When to display the glass background. The default is [always](/documentation/swiftui/glassbackgrounddisplaymode/always).



## Return Value

A view with a glass background.

## Discussion

Use this modifier to add a 3D glass background material that includes thickness, specularity, glass blur, shadows, and other effects. Because of its physical depth, the glass background influences z-axis layout.

To ensure that the effect renders properly when you add it to a collection of views in a [ZStack](/documentation/swiftui/zstack), add the modifier to the stack rather to one of the views in the stack. This includes when you create an implicit stack with view modifiers like [overlay(alignment:content:)](/documentation/swiftui/view/overlay(alignment:content:)) or [background(alignment:content:)](/documentation/swiftui/view/background(alignment:content:)). In those cases, you might need to create an explicit [ZStack](/documentation/swiftui/zstack) inside the `content` closure to have a place to add the glass background modifier.

## Adding a glass background on views in visionOS

- [glassBackgroundEffect(in:displayMode:)](/documentation/swiftui/view/glassbackgroundeffect(in:displaymode:))
- [GlassBackgroundDisplayMode](/documentation/swiftui/glassbackgrounddisplaymode)
- [GlassBackgroundEffect](/documentation/swiftui/glassbackgroundeffect)
- [AutomaticGlassBackgroundEffect](/documentation/swiftui/automaticglassbackgroundeffect)
- [GlassBackgroundEffectConfiguration](/documentation/swiftui/glassbackgroundeffectconfiguration)
- [FeatheredGlassBackgroundEffect](/documentation/swiftui/featheredglassbackgroundeffect)
- [PlateGlassBackgroundEffect](/documentation/swiftui/plateglassbackgroundeffect)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
