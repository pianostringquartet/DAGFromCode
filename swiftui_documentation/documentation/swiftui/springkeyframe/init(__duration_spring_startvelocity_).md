---
title: init(_:duration:spring:startVelocity:)
description: Creates a new keyframe using the given value and timestamp.
source: https://developer.apple.com/documentation/swiftui/springkeyframe/init(_:duration:spring:startvelocity:)
timestamp: 2025-10-29T00:13:30.067Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [springkeyframe](/documentation/swiftui/springkeyframe)

**Initializer**

# init(_:duration:spring:startVelocity:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates a new keyframe using the given value and timestamp.

```swift
init(_ to: Value, duration: TimeInterval? = nil, spring: Spring = Spring(), startVelocity: Value? = nil)
```

## Parameters

**to**

The value of the keyframe.



**duration**

The duration of the segment defined by this keyframe, or nil to use the settling duration of the spring.



**spring**

The spring that defines the shape of the segment befire this keyframe



**startVelocity**

The velocity of the value at the start of the segment, or `nil` to automatically compute the velocity to maintain smooth motion.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
