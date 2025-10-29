---
title: bounce
description: How bouncy the spring is.
source: https://developer.apple.com/documentation/swiftui/spring/bounce
timestamp: 2025-10-29T00:13:08.640Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [spring](/documentation/swiftui/spring)

**Instance Property**

# bounce

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> How bouncy the spring is.

```swift
var bounce: Double { get }
```

## Discussion

A value of 0 indicates no bounces (a critically damped spring), positive values indicate increasing amounts of bounciness up to a maximum of 1.0 (corresponding to undamped oscillation), and negative values indicate overdamped springs with a minimum value of -1.0.

## Getting spring characteristics

- [damping](/documentation/swiftui/spring/damping)
- [dampingRatio](/documentation/swiftui/spring/dampingratio)
- [duration](/documentation/swiftui/spring/duration)
- [mass](/documentation/swiftui/spring/mass)
- [response](/documentation/swiftui/spring/response)
- [settlingDuration](/documentation/swiftui/spring/settlingduration)
- [stiffness](/documentation/swiftui/spring/stiffness)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
