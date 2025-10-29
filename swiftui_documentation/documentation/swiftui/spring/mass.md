---
title: mass
description: The mass of the object attached to the end of the spring.
source: https://developer.apple.com/documentation/swiftui/spring/mass
timestamp: 2025-10-29T00:10:26.405Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [spring](/documentation/swiftui/spring)

**Instance Property**

# mass

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> The mass of the object attached to the end of the spring.

```swift
var mass: Double { get }
```

## Discussion

The default mass is 1. Increasing this value will increase the spring’s effect: the attached object will be subject to more oscillations and greater overshoot, resulting in an increased settling duration. Decreasing the mass will reduce the spring effect: there will be fewer oscillations and a reduced overshoot, resulting in a decreased settling duration.

## Getting spring characteristics

- [bounce](/documentation/swiftui/spring/bounce)
- [damping](/documentation/swiftui/spring/damping)
- [dampingRatio](/documentation/swiftui/spring/dampingratio)
- [duration](/documentation/swiftui/spring/duration)
- [response](/documentation/swiftui/spring/response)
- [settlingDuration](/documentation/swiftui/spring/settlingduration)
- [stiffness](/documentation/swiftui/spring/stiffness)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
