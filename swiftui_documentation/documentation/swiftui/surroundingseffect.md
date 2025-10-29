---
title: SurroundingsEffect
description: Effects that the system can apply to passthrough video.
source: https://developer.apple.com/documentation/swiftui/surroundingseffect
timestamp: 2025-10-29T00:14:50.595Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SurroundingsEffect

**Available on:** macOS 26.0+, visionOS 1.0+

> Effects that the system can apply to passthrough video.

```swift
struct SurroundingsEffect
```

## Overview

Use one of these values with the [preferredSurroundingsEffect(_:)](/documentation/swiftui/view/preferredsurroundingseffect(_:)) view modifier to indicate what effect to apply to passthrough video when the modified view is displayed.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)

## Getting the effect

- [systemDark](/documentation/swiftui/surroundingseffect/systemdark) An effect that dims passthrough video.

## Type Properties

- [dark](/documentation/swiftui/surroundingseffect/dark) An effect that dims passthrough video.
- [semiDark](/documentation/swiftui/surroundingseffect/semidark) An effect that dims passthrough video less than .
- [ultraDark](/documentation/swiftui/surroundingseffect/ultradark) An effect that dims passthrough video more than 

## Type Methods

- [colorMultiply(_:)](/documentation/swiftui/surroundingseffect/colormultiply(_:)) An effect that applies a custom tint to the passthrough video by multiplying the passthrough with a .
- [dim(intensity:)](/documentation/swiftui/surroundingseffect/dim(intensity:)) An effect that dims the passthrough video a custom amount.

## Configuring passthrough

- [preferredSurroundingsEffect(_:)](/documentation/swiftui/view/preferredsurroundingseffect(_:))
- [BreakthroughEffect](/documentation/swiftui/breakthrougheffect)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
