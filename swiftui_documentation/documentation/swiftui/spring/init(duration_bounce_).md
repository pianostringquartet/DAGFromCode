---
title: init(duration:bounce:)
description: Creates a spring with the specified duration and bounce.
source: https://developer.apple.com/documentation/swiftui/spring/init(duration:bounce:)
timestamp: 2025-10-29T00:14:33.729Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [spring](/documentation/swiftui/spring)

**Initializer**

# init(duration:bounce:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates a spring with the specified duration and bounce.

```swift
init(duration: TimeInterval = 0.5, bounce: Double = 0.0)
```

## Parameters

**duration**

Defines the pace of the spring. This is approximately equal to the settling duration, but for springs with very large bounce values, will be the duration of the period of oscillation for the spring.



**bounce**

How bouncy the spring should be. A value of 0 indicates no bounces (a critically damped spring), positive values indicate increasing amounts of bounciness up to a maximum of 1.0 (corresponding to undamped oscillation), and negative values indicate overdamped springs with a minimum value of -1.0.



## Creating a spring

- [init(mass:stiffness:damping:allowOverDamping:)](/documentation/swiftui/spring/init(mass:stiffness:damping:allowoverdamping:))
- [init(response:dampingRatio:)](/documentation/swiftui/spring/init(response:dampingratio:))
- [init(settlingDuration:dampingRatio:epsilon:)](/documentation/swiftui/spring/init(settlingduration:dampingratio:epsilon:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
