---
title: init(mass:stiffness:damping:allowOverDamping:)
description: Creates a spring with the specified mass, stiffness, and damping.
source: https://developer.apple.com/documentation/swiftui/spring/init(mass:stiffness:damping:allowoverdamping:)
timestamp: 2025-10-29T00:11:56.334Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [spring](/documentation/swiftui/spring)

**Initializer**

# init(mass:stiffness:damping:allowOverDamping:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates a spring with the specified mass, stiffness, and damping.

```swift
init(mass: Double = 1.0, stiffness: Double, damping: Double, allowOverDamping: Bool = false)
```

## Parameters

**mass**

Specifies that property of the object attached to the end of the spring.



**stiffness**

The corresponding spring coefficient.



**damping**

Defines how the spring’s motion should be damped due to the forces of friction.



## Creating a spring

- [init(duration:bounce:)](/documentation/swiftui/spring/init(duration:bounce:))
- [init(response:dampingRatio:)](/documentation/swiftui/spring/init(response:dampingratio:))
- [init(settlingDuration:dampingRatio:epsilon:)](/documentation/swiftui/spring/init(settlingduration:dampingratio:epsilon:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
