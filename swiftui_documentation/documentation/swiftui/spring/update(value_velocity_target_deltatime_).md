---
title: update(value:velocity:target:deltaTime:)
description: Updates the current  value and velocity of a spring.
source: https://developer.apple.com/documentation/swiftui/spring/update(value:velocity:target:deltatime:)
timestamp: 2025-10-29T00:10:24.266Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [spring](/documentation/swiftui/spring)

**Instance Method**

# update(value:velocity:target:deltaTime:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Updates the current  value and velocity of a spring.

```swift
func update<V>(value: inout V, velocity: inout V, target: V, deltaTime: TimeInterval) where V : VectorArithmetic
```

## Parameters

**value**

The current value of the spring.



**velocity**

The current velocity of the spring.



**target**

The target that `value` is moving towards.



**deltaTime**

The amount of time that has passed since the spring was at the position specified by `value`.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
