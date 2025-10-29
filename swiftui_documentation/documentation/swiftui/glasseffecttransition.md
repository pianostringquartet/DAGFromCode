---
title: GlassEffectTransition
description: A structure that describes changes to apply when a glass effect is added or removed from the view hierarchy.
source: https://developer.apple.com/documentation/swiftui/glasseffecttransition
timestamp: 2025-10-29T00:13:29.693Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# GlassEffectTransition

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, watchOS 26.0+

> A structure that describes changes to apply when a glass effect is added or removed from the view hierarchy.

```swift
struct GlassEffectTransition
```

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Type Properties

- [identity](/documentation/swiftui/glasseffecttransition/identity) The identity transition specifying no changes.
- [matchedGeometry](/documentation/swiftui/glasseffecttransition/matchedgeometry) Returns the matched geometry glass effect transition.
- [materialize](/documentation/swiftui/glasseffecttransition/materialize) The materialize glass effect transition which will fade in content and animate in or out the glass material but will not attempt to match the geometry of any other glass effects.

## Styling views with Liquid Glass

- [Applying Liquid Glass to custom views](/documentation/swiftui/applying-liquid-glass-to-custom-views)
- [Landmarks: Building an app with Liquid Glass](/documentation/swiftui/landmarks-building-an-app-with-liquid-glass)
- [glassEffect(_:in:)](/documentation/swiftui/view/glasseffect(_:in:))
- [interactive(_:)](/documentation/swiftui/glass/interactive(_:))
- [GlassEffectContainer](/documentation/swiftui/glasseffectcontainer)
- [GlassButtonStyle](/documentation/swiftui/glassbuttonstyle)
- [GlassProminentButtonStyle](/documentation/swiftui/glassprominentbuttonstyle)
- [DefaultGlassEffectShape](/documentation/swiftui/defaultglasseffectshape)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
