---
title: value(fromValue:toValue:initialVelocity:time:)
description: Calculates the value of the spring at a given time for a starting and ending value for the spring to travel.
source: https://developer.apple.com/documentation/swiftui/spring/value(fromvalue:tovalue:initialvelocity:time:)
timestamp: 2025-10-29T00:12:31.040Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [spring](/documentation/swiftui/spring)

**Instance Method**

# value(fromValue:toValue:initialVelocity:time:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Calculates the value of the spring at a given time for a starting and ending value for the spring to travel.

```swift
func value<V>(fromValue: V, toValue: V, initialVelocity: V, time: TimeInterval) -> V where V : Animatable
```

## Getting spring state

- [value(target:initialVelocity:time:)](/documentation/swiftui/spring/value(target:initialvelocity:time:))
- [velocity(target:initialVelocity:time:)](/documentation/swiftui/spring/velocity(target:initialvelocity:time:))
- [velocity(fromValue:toValue:initialVelocity:time:)](/documentation/swiftui/spring/velocity(fromvalue:tovalue:initialvelocity:time:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
