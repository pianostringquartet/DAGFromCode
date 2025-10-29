---
title: dampingRatio
description: The amount of drag applied, as a fraction of the amount needed to produce critical damping.
source: https://developer.apple.com/documentation/swiftui/spring/dampingratio
timestamp: 2025-10-29T00:14:56.580Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [spring](/documentation/swiftui/spring)

**Instance Property**

# dampingRatio

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> The amount of drag applied, as a fraction of the amount needed to produce critical damping.

```swift
var dampingRatio: Double { get }
```

## Discussion

When `dampingRatio` is 1, the spring will smoothly decelerate to its final position without oscillating. Damping ratios less than 1 will oscillate more and more before coming to a complete stop.

## Getting spring characteristics

- [bounce](/documentation/swiftui/spring/bounce)
- [damping](/documentation/swiftui/spring/damping)
- [duration](/documentation/swiftui/spring/duration)
- [mass](/documentation/swiftui/spring/mass)
- [response](/documentation/swiftui/spring/response)
- [settlingDuration](/documentation/swiftui/spring/settlingduration)
- [stiffness](/documentation/swiftui/spring/stiffness)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
