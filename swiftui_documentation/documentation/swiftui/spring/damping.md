---
title: damping
description: Defines how the spring’s motion should be damped due to the forces of friction.
source: https://developer.apple.com/documentation/swiftui/spring/damping
timestamp: 2025-10-29T00:14:37.639Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [spring](/documentation/swiftui/spring)

**Instance Property**

# damping

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Defines how the spring’s motion should be damped due to the forces of friction.

```swift
var damping: Double { get }
```

## Discussion

Reducing this value reduces the energy loss with each oscillation: the spring will overshoot its destination. Increasing the value increases the energy loss with each duration: there will be fewer and smaller oscillations.

## Getting spring characteristics

- [bounce](/documentation/swiftui/spring/bounce)
- [dampingRatio](/documentation/swiftui/spring/dampingratio)
- [duration](/documentation/swiftui/spring/duration)
- [mass](/documentation/swiftui/spring/mass)
- [response](/documentation/swiftui/spring/response)
- [settlingDuration](/documentation/swiftui/spring/settlingduration)
- [stiffness](/documentation/swiftui/spring/stiffness)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
