---
title: slider
description: Indicates that a slider’s thumb has been released (touch up).
source: https://developer.apple.com/documentation/swiftui/sensoryfeedback/releasefeedback/slider
timestamp: 2025-10-29T00:14:26.504Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [sensoryfeedback](/documentation/swiftui/sensoryfeedback) › [releasefeedback](/documentation/swiftui/sensoryfeedback/releasefeedback)

**Type Property**

# slider

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Indicates that a slider’s thumb has been released (touch up).

```swift
static let slider: SensoryFeedback.ReleaseFeedback
```

## Discussion

Slider controls should also play [press(_:)](/documentation/swiftui/sensoryfeedback/press(_:)) with [slider](/documentation/swiftui/sensoryfeedback/pressfeedback/slider).

Only plays feedback on visionOS.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
