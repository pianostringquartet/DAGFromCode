---
title: init(_:duration:startVelocity:endVelocity:)
description: Creates a new keyframe using the given value and timestamp.
source: https://developer.apple.com/documentation/swiftui/cubickeyframe/init(_:duration:startvelocity:endvelocity:)
timestamp: 2025-10-29T00:15:03.467Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [cubickeyframe](/documentation/swiftui/cubickeyframe)

**Initializer**

# init(_:duration:startVelocity:endVelocity:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates a new keyframe using the given value and timestamp.

```swift
init(_ to: Value, duration: TimeInterval, startVelocity: Value? = nil, endVelocity: Value? = nil)
```

## Parameters

**to**

The value of the keyframe.



**duration**

The duration of the segment defined by this keyframe.



**startVelocity**

The velocity of the value at the beginning of the segment, or `nil` to automatically compute the velocity to maintain smooth motion.



**endVelocity**

The velocity of the value at the end of the segment, or `nil` to automatically compute the velocity to maintain smooth motion.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
