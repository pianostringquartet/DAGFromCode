---
title: dim(intensity:)
description: An effect that dims the passthrough video a custom amount.
source: https://developer.apple.com/documentation/swiftui/surroundingseffect/dim(intensity:)
timestamp: 2025-10-29T00:10:25.227Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [surroundingseffect](/documentation/swiftui/surroundingseffect)

**Type Method**

# dim(intensity:)

**Available on:** macOS 26.0+, visionOS 2.0+

> An effect that dims the passthrough video a custom amount.

```swift
static func dim(intensity: Double) -> SurroundingsEffect
```

## Discussion

Use this with the [preferredSurroundingsEffect(_:)](/documentation/swiftui/view/preferredsurroundingseffect(_:)) view modifier when you want to darken the passthrough while displaying a particular view. The value will be clamped between 0 and 1. This effect will only be applied while an immersive space is opened.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
