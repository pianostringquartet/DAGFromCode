---
title: init(settlingDuration:dampingRatio:epsilon:)
description: Creates a spring with the specified duration and damping ratio.
source: https://developer.apple.com/documentation/swiftui/spring/init(settlingduration:dampingratio:epsilon:)
timestamp: 2025-10-29T00:12:20.665Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [spring](/documentation/swiftui/spring)

**Initializer**

# init(settlingDuration:dampingRatio:epsilon:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates a spring with the specified duration and damping ratio.

```swift
init(settlingDuration: TimeInterval, dampingRatio: Double, epsilon: Double = 0.001)
```

## Parameters

**settlingDuration**

The approximate time it will take for the spring to come to rest.



**dampingRatio**

The amount of drag applied as a fraction of the amount needed to produce critical damping.



**epsilon**

The threshhold for how small all subsequent values need to be before the spring is considered to have settled.



## Creating a spring

- [init(duration:bounce:)](/documentation/swiftui/spring/init(duration:bounce:))
- [init(mass:stiffness:damping:allowOverDamping:)](/documentation/swiftui/spring/init(mass:stiffness:damping:allowoverdamping:))
- [init(response:dampingRatio:)](/documentation/swiftui/spring/init(response:dampingratio:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
