---
title: GlassBackgroundDisplayMode
description: The display mode of a glass background.
source: https://developer.apple.com/documentation/swiftui/glassbackgrounddisplaymode
timestamp: 2025-10-29T00:14:39.787Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Enumeration**

# GlassBackgroundDisplayMode

**Available on:** visionOS 1.0+

> The display mode of a glass background.

```swift
enum GlassBackgroundDisplayMode
```

## Overview

Use a value of this type to indicate when to display a glass background that you add to a view using a view modifier like [glassBackgroundEffect(displayMode:)](/documentation/swiftui/view/glassbackgroundeffect(displaymode:)).

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting the mode

- [GlassBackgroundDisplayMode.always](/documentation/swiftui/glassbackgrounddisplaymode/always) Always display the glass material.
- [GlassBackgroundDisplayMode.implicit](/documentation/swiftui/glassbackgrounddisplaymode/implicit) Display the glass material only when the view isn’t already contained in glass.
- [GlassBackgroundDisplayMode.never](/documentation/swiftui/glassbackgrounddisplaymode/never) Never display the glass material.

## Adding a glass background on views in visionOS

- [glassBackgroundEffect(displayMode:)](/documentation/swiftui/view/glassbackgroundeffect(displaymode:))
- [glassBackgroundEffect(in:displayMode:)](/documentation/swiftui/view/glassbackgroundeffect(in:displaymode:))
- [GlassBackgroundEffect](/documentation/swiftui/glassbackgroundeffect)
- [AutomaticGlassBackgroundEffect](/documentation/swiftui/automaticglassbackgroundeffect)
- [GlassBackgroundEffectConfiguration](/documentation/swiftui/glassbackgroundeffectconfiguration)
- [FeatheredGlassBackgroundEffect](/documentation/swiftui/featheredglassbackgroundeffect)
- [PlateGlassBackgroundEffect](/documentation/swiftui/plateglassbackgroundeffect)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
