---
title: toggle
description: Indicates that a toggle has been pressed (touch down).
source: https://developer.apple.com/documentation/swiftui/sensoryfeedback/pressfeedback/toggle
timestamp: 2025-10-29T00:14:54.687Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [sensoryfeedback](/documentation/swiftui/sensoryfeedback) › [pressfeedback](/documentation/swiftui/sensoryfeedback/pressfeedback)

**Type Property**

# toggle

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Indicates that a toggle has been pressed (touch down).

```swift
static let toggle: SensoryFeedback.PressFeedback
```

## Discussion

Toggle controls should also play [selection(_:)](/documentation/swiftui/sensoryfeedback/selection(_:)) with [on](/documentation/swiftui/sensoryfeedback/selectionfeedback/on) and [off](/documentation/swiftui/sensoryfeedback/selectionfeedback/off).

Only plays feedback on visionOS.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
