---
title: slider
description: Indicates that a slider’s thumb has been pressed (touch down).
source: https://developer.apple.com/documentation/swiftui/sensoryfeedback/pressfeedback/slider
timestamp: 2025-10-29T00:14:36.243Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [sensoryfeedback](/documentation/swiftui/sensoryfeedback) › [pressfeedback](/documentation/swiftui/sensoryfeedback/pressfeedback)

**Type Property**

# slider

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Indicates that a slider’s thumb has been pressed (touch down).

```swift
static let slider: SensoryFeedback.PressFeedback
```

## Discussion

Slider controls should also play [release(_:)](/documentation/swiftui/sensoryfeedback/release(_:)) with [slider](/documentation/swiftui/sensoryfeedback/releasefeedback/slider).

Only plays feedback on visionOS.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
