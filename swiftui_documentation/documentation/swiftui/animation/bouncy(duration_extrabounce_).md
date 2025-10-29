---
title: bouncy(duration:extraBounce:)
description: A spring animation with a predefined duration and higher amount of bounce that can be tuned.
source: https://developer.apple.com/documentation/swiftui/animation/bouncy(duration:extrabounce:)
timestamp: 2025-10-29T00:10:00.073Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animation](/documentation/swiftui/animation)

**Type Method**

# bouncy(duration:extraBounce:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A spring animation with a predefined duration and higher amount of bounce that can be tuned.

```swift
static func bouncy(duration: TimeInterval = 0.5, extraBounce: Double = 0.0) -> Animation
```

## Parameters

**duration**

The perceptual duration, which defines the pace of the spring. This is approximately equal to the settling duration, but for very bouncy springs, will be the duration of the period of oscillation for the spring.



**extraBounce**

How much additional bounce should be added to the base bounce of 0.3.



## Getting built-in spring animations

- [bouncy](/documentation/swiftui/animation/bouncy)
- [smooth](/documentation/swiftui/animation/smooth)
- [smooth(duration:extraBounce:)](/documentation/swiftui/animation/smooth(duration:extrabounce:))
- [snappy](/documentation/swiftui/animation/snappy)
- [snappy(duration:extraBounce:)](/documentation/swiftui/animation/snappy(duration:extrabounce:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
