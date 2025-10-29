---
title: smooth(duration:extraBounce:)
description: A smooth spring with a predefined duration and no bounce that can be tuned.
source: https://developer.apple.com/documentation/swiftui/spring/smooth(duration:extrabounce:)
timestamp: 2025-10-29T00:09:22.246Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [spring](/documentation/swiftui/spring)

**Type Method**

# smooth(duration:extraBounce:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A smooth spring with a predefined duration and no bounce that can be tuned.

```swift
static func smooth(duration: TimeInterval = 0.5, extraBounce: Double = 0.0) -> Spring
```

## Parameters

**duration**

The perceptual duration, which defines the pace of the spring. This is approximately equal to the settling duration, but for very bouncy springs, will be the duration of the period of oscillation for the spring.



**extraBounce**

How much additional bounce should be added to the base bounce of 0.



## Getting built-in springs

- [bouncy](/documentation/swiftui/spring/bouncy)
- [bouncy(duration:extraBounce:)](/documentation/swiftui/spring/bouncy(duration:extrabounce:))
- [smooth](/documentation/swiftui/spring/smooth)
- [snappy](/documentation/swiftui/spring/snappy)
- [snappy(duration:extraBounce:)](/documentation/swiftui/spring/snappy(duration:extrabounce:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
