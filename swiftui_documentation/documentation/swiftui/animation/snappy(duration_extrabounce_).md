---
title: snappy(duration:extraBounce:)
description: A spring animation with a predefined duration and small amount of bounce that feels more snappy and can be tuned.
source: https://developer.apple.com/documentation/swiftui/animation/snappy(duration:extrabounce:)
timestamp: 2025-10-29T00:12:00.291Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animation](/documentation/swiftui/animation)

**Type Method**

# snappy(duration:extraBounce:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A spring animation with a predefined duration and small amount of bounce that feels more snappy and can be tuned.

```swift
static func snappy(duration: TimeInterval = 0.5, extraBounce: Double = 0.0) -> Animation
```

## Parameters

**duration**

The perceptual duration, which defines the pace of the spring. This is approximately equal to the settling duration, but for very bouncy springs, will be the duration of the period of oscillation for the spring.



**extraBounce**

How much additional bounce should be added to the base bounce of 0.15.



## Getting built-in spring animations

- [bouncy](/documentation/swiftui/animation/bouncy)
- [bouncy(duration:extraBounce:)](/documentation/swiftui/animation/bouncy(duration:extrabounce:))
- [smooth](/documentation/swiftui/animation/smooth)
- [smooth(duration:extraBounce:)](/documentation/swiftui/animation/smooth(duration:extrabounce:))
- [snappy](/documentation/swiftui/animation/snappy)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
