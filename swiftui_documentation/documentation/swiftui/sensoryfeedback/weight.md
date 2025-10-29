---
title: SensoryFeedback.Weight
description: The weight to be represented by a type of feedback.
source: https://developer.apple.com/documentation/swiftui/sensoryfeedback/weight
timestamp: 2025-10-29T00:13:20.218Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [sensoryfeedback](/documentation/swiftui/sensoryfeedback)

**Structure**

# SensoryFeedback.Weight

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 26.0+, watchOS 10.0+

> The weight to be represented by a type of feedback.

```swift
struct Weight
```

## Overview

`Weight` values can be passed to `SensoryFeedback.impact(weight:intensity:)`.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting flexibility values

- [light](/documentation/swiftui/sensoryfeedback/weight/light) Indicates a collision between small or lightweight UI objects.
- [medium](/documentation/swiftui/sensoryfeedback/weight/medium) Indicates a collision between medium-sized or medium-weight UI objects.
- [heavy](/documentation/swiftui/sensoryfeedback/weight/heavy) Indicates a collision between large or heavyweight UI objects.

## Producing a physical impact

- [impact](/documentation/swiftui/sensoryfeedback/impact)
- [impact(weight:intensity:)](/documentation/swiftui/sensoryfeedback/impact(weight:intensity:))
- [impact(flexibility:intensity:)](/documentation/swiftui/sensoryfeedback/impact(flexibility:intensity:))
- [SensoryFeedback.Flexibility](/documentation/swiftui/sensoryfeedback/flexibility)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
