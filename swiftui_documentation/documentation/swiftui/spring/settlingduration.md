---
title: settlingDuration
description: The estimated duration required for the spring system to be considered at rest.
source: https://developer.apple.com/documentation/swiftui/spring/settlingduration
timestamp: 2025-10-29T00:09:39.215Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [spring](/documentation/swiftui/spring)

**Instance Property**

# settlingDuration

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> The estimated duration required for the spring system to be considered at rest.

```swift
var settlingDuration: TimeInterval { get }
```

## Discussion

This uses a `target` of 1.0, an `initialVelocity` of 0, and an `epsilon` of 0.001.

## Getting spring characteristics

- [bounce](/documentation/swiftui/spring/bounce)
- [damping](/documentation/swiftui/spring/damping)
- [dampingRatio](/documentation/swiftui/spring/dampingratio)
- [duration](/documentation/swiftui/spring/duration)
- [mass](/documentation/swiftui/spring/mass)
- [response](/documentation/swiftui/spring/response)
- [stiffness](/documentation/swiftui/spring/stiffness)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
