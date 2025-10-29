---
title: DragGesture.Value
description: The attributes of a drag gesture.
source: https://developer.apple.com/documentation/swiftui/draggesture/value
timestamp: 2025-10-29T00:14:26.620Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [draggesture](/documentation/swiftui/draggesture)

**Structure**

# DragGesture.Value

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, visionOS 1.0+, watchOS 6.0+

> The attributes of a drag gesture.

```swift
struct Value
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting 2D position

- [startLocation](/documentation/swiftui/draggesture/value/startlocation) The location of the drag gesture’s first event.
- [location](/documentation/swiftui/draggesture/value/location) The location of the drag gesture’s current event.
- [predictedEndLocation](/documentation/swiftui/draggesture/value/predictedendlocation) A prediction, based on the current drag velocity, of where the final location will be if dragging stopped now.
- [translation](/documentation/swiftui/draggesture/value/translation) The total translation from the start of the drag gesture to the current event of the drag gesture.
- [predictedEndTranslation](/documentation/swiftui/draggesture/value/predictedendtranslation) A prediction, based on the current drag velocity, of what the final translation will be if dragging stopped now.

## Getting 3D position

- [startLocation3D](/documentation/swiftui/draggesture/value/startlocation3d) The 3D start location of the drag gesture.
- [location3D](/documentation/swiftui/draggesture/value/location3d) The 3D location of the drag gesture.
- [predictedEndLocation3D](/documentation/swiftui/draggesture/value/predictedendlocation3d) A prediction of where the final location would be if dragging stopped now, based on the current drag velocity.
- [translation3D](/documentation/swiftui/draggesture/value/translation3d) The translation of the drag gesture from  to .
- [predictedEndTranslation3D](/documentation/swiftui/draggesture/value/predictedendtranslation3d) A prediction of what the final translation would be if dragging stopped now, based on the current drag velocity.
- [startInputDevicePose3D](/documentation/swiftui/draggesture/value/startinputdevicepose3d) The starting 3D pose of the device driving the drag, if one exists.
- [inputDevicePose3D](/documentation/swiftui/draggesture/value/inputdevicepose3d) The 3D pose of the device driving the drag, if one exists.

## Handling changes over time

- [time](/documentation/swiftui/draggesture/value/time) The time associated with the drag gesture’s current event.
- [velocity](/documentation/swiftui/draggesture/value/velocity) The current drag velocity.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
