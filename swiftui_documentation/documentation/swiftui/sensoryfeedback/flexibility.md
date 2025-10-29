---
title: SensoryFeedback.Flexibility
description: The flexibility to be represented by a type of feedback.
source: https://developer.apple.com/documentation/swiftui/sensoryfeedback/flexibility
timestamp: 2025-10-29T00:12:20.368Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [sensoryfeedback](/documentation/swiftui/sensoryfeedback)

**Structure**

# SensoryFeedback.Flexibility

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 26.0+, watchOS 10.0+

> The flexibility to be represented by a type of feedback.

```swift
struct Flexibility
```

## Overview

`Flexibility` values can be passed to `SensoryFeedback.impact(flexibility:intensity:)`.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting flexibility values

- [rigid](/documentation/swiftui/sensoryfeedback/flexibility/rigid) Indicates a collision between hard or inflexible UI objects.
- [soft](/documentation/swiftui/sensoryfeedback/flexibility/soft) Indicates a collision between soft or flexible UI objects.
- [solid](/documentation/swiftui/sensoryfeedback/flexibility/solid) Indicates a collision between solid UI objects of medium flexibility.

## Producing a physical impact

- [impact](/documentation/swiftui/sensoryfeedback/impact)
- [impact(weight:intensity:)](/documentation/swiftui/sensoryfeedback/impact(weight:intensity:))
- [impact(flexibility:intensity:)](/documentation/swiftui/sensoryfeedback/impact(flexibility:intensity:))
- [SensoryFeedback.Weight](/documentation/swiftui/sensoryfeedback/weight)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
