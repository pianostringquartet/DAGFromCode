---
title: glassBackgroundEffect(in:displayMode:)
description: Fills the view’s background with an automatic glass background effect and a shape that you specify.
source: https://developer.apple.com/documentation/swiftui/view/glassbackgroundeffect(in:displaymode:)
timestamp: 2025-10-29T00:14:19.293Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# glassBackgroundEffect(in:displayMode:)

**Available on:** visionOS 1.0+

> Fills the view’s background with an automatic glass background effect and a shape that you specify.

```swift
nonisolated func glassBackgroundEffect<S>(in shape: S, displayMode: GlassBackgroundDisplayMode = .always) -> some View where S : InsettableShape
```

## Parameters

**shape**

An [Insettable Shape](/documentation/swiftui/insettableshape) instance that SwiftUI draws behind the view.



**displayMode**

When to display the glass background. The default is [always](/documentation/swiftui/glassbackgrounddisplaymode/always).



## Return Value

A view with a glass background.

## Discussion

Use this modifier to add a 3D glass background material that includes thickness, specularity, glass blur, shadows, and other effects. Because of its physical depth, the glass background influences z-axis layout.

To ensure that the effect renders properly when you add it to a collection of views in a [ZStack](/documentation/swiftui/zstack), add the modifier to the stack rather to one of the views in the stack. This includes when you create an implicit stack with view modifiers like [overlay(alignment:content:)](/documentation/swiftui/view/overlay(alignment:content:)) or [background(alignment:content:)](/documentation/swiftui/view/background(alignment:content:)). In those cases, you might need to create an explicit [ZStack](/documentation/swiftui/zstack) inside the `content` closure to have a place to add the glass background modifier.

Non closed shapes will be rendered as their convex hull.

## Adding a glass background on views in visionOS

- [glassBackgroundEffect(displayMode:)](/documentation/swiftui/view/glassbackgroundeffect(displaymode:))
- [GlassBackgroundDisplayMode](/documentation/swiftui/glassbackgrounddisplaymode)
- [GlassBackgroundEffect](/documentation/swiftui/glassbackgroundeffect)
- [AutomaticGlassBackgroundEffect](/documentation/swiftui/automaticglassbackgroundeffect)
- [GlassBackgroundEffectConfiguration](/documentation/swiftui/glassbackgroundeffectconfiguration)
- [FeatheredGlassBackgroundEffect](/documentation/swiftui/featheredglassbackgroundeffect)
- [PlateGlassBackgroundEffect](/documentation/swiftui/plateglassbackgroundeffect)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
