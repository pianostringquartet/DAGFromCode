---
title: SensoryFeedback
description: Represents a type of haptic and/or audio feedback that can be played.
source: https://developer.apple.com/documentation/swiftui/sensoryfeedback
timestamp: 2025-10-29T00:11:00.658Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SensoryFeedback

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 26.0+, watchOS 10.0+

> Represents a type of haptic and/or audio feedback that can be played.

```swift
struct SensoryFeedback
```

## Overview

This feedback can be passed to `View.sensoryFeedback` to play it.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Indicating start and stop

- [start](/documentation/swiftui/sensoryfeedback/start) Indicates that an activity started.
- [stop](/documentation/swiftui/sensoryfeedback/stop) Indicates that an activity stopped.

## Indicating changes and selections

- [alignment](/documentation/swiftui/sensoryfeedback/alignment) Indicates the alignment of a dragged item.
- [decrease](/documentation/swiftui/sensoryfeedback/decrease) Indicates that an important value decreased below a significant threshold.
- [increase](/documentation/swiftui/sensoryfeedback/increase) Indicates that an important value increased above a significant threshold.
- [levelChange](/documentation/swiftui/sensoryfeedback/levelchange) Indicates movement between discrete levels of pressure.
- [selection](/documentation/swiftui/sensoryfeedback/selection) Indicates that a UI element’s values are changing.
- [pathComplete](/documentation/swiftui/sensoryfeedback/pathcomplete) Indicates a drawn path has completed and/or recognized.

## Indicating the outcome of an operation

- [success](/documentation/swiftui/sensoryfeedback/success) Indicates that a task or action has completed.
- [warning](/documentation/swiftui/sensoryfeedback/warning) Indicates that a task or action has produced a warning of some kind.
- [error](/documentation/swiftui/sensoryfeedback/error) Indicates that an error has occurred.

## Producing a physical impact

- [impact](/documentation/swiftui/sensoryfeedback/impact) Provides a physical metaphor you can use to complement a visual experience.
- [impact(weight:intensity:)](/documentation/swiftui/sensoryfeedback/impact(weight:intensity:)) Provides a physical metaphor you can use to complement a visual experience.
- [impact(flexibility:intensity:)](/documentation/swiftui/sensoryfeedback/impact(flexibility:intensity:)) Provides a physical metaphor you can use to complement a visual experience.
- [SensoryFeedback.Flexibility](/documentation/swiftui/sensoryfeedback/flexibility) The flexibility to be represented by a type of feedback.
- [SensoryFeedback.Weight](/documentation/swiftui/sensoryfeedback/weight) The weight to be represented by a type of feedback.

## Structures

- [SensoryFeedback.PressFeedback](/documentation/swiftui/sensoryfeedback/pressfeedback) Feedback that can be played in response to a press (touch down) on a control.
- [SensoryFeedback.ReleaseFeedback](/documentation/swiftui/sensoryfeedback/releasefeedback) Feedback that can be played in response to a release (touch up) of a control.
- [SensoryFeedback.SelectionFeedback](/documentation/swiftui/sensoryfeedback/selectionfeedback) Feedback that can be played in response to a specific UI element’s values changing.

## Type Methods

- [press(_:)](/documentation/swiftui/sensoryfeedback/press(_:)) Plays feedback in response to a specific UI element being pressed (touch down).
- [release(_:)](/documentation/swiftui/sensoryfeedback/release(_:)) Plays feedback in response to a specific UI element being released (touch up).
- [selection(_:)](/documentation/swiftui/sensoryfeedback/selection(_:)) Plays feedback in response to a specific UI element’s values changing.

## Providing haptic feedback

- [sensoryFeedback(_:trigger:)](/documentation/swiftui/view/sensoryfeedback(_:trigger:))
- [sensoryFeedback(trigger:_:)](/documentation/swiftui/view/sensoryfeedback(trigger:_:))
- [sensoryFeedback(_:trigger:condition:)](/documentation/swiftui/view/sensoryfeedback(_:trigger:condition:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
