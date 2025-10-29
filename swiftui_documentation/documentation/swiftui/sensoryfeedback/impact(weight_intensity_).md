---
title: impact(weight:intensity:)
description: Provides a physical metaphor you can use to complement a visual experience.
source: https://developer.apple.com/documentation/swiftui/sensoryfeedback/impact(weight:intensity:)
timestamp: 2025-10-29T00:10:32.394Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [sensoryfeedback](/documentation/swiftui/sensoryfeedback)

**Type Method**

# impact(weight:intensity:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 26.0+, watchOS 10.0+

> Provides a physical metaphor you can use to complement a visual experience.

```swift
static func impact(weight: SensoryFeedback.Weight = .medium, intensity: Double = 1.0) -> SensoryFeedback
```

## Discussion

Use this to provide feedback for UI elements colliding. It should supplement the user experience, since only some platforms will play feedback in response to it.

Not all platforms will play different feedback for different weights and intensities of impact.

Only plays feedback on iOS and watchOS.

## Producing a physical impact

- [impact](/documentation/swiftui/sensoryfeedback/impact)
- [impact(flexibility:intensity:)](/documentation/swiftui/sensoryfeedback/impact(flexibility:intensity:))
- [SensoryFeedback.Flexibility](/documentation/swiftui/sensoryfeedback/flexibility)
- [SensoryFeedback.Weight](/documentation/swiftui/sensoryfeedback/weight)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
