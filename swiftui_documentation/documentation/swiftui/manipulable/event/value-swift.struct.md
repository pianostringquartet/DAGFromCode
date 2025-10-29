---
title: Manipulable.Event.Value
description: Describes the value associated with a manipulation gesture event.
source: https://developer.apple.com/documentation/swiftui/manipulable/event/value-swift.struct
timestamp: 2025-10-29T00:11:00.254Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [manipulable](/documentation/swiftui/manipulable) › [event](/documentation/swiftui/manipulable/event)

**Structure**

# Manipulable.Event.Value

**Available on:** visionOS 26.0+

> Describes the value associated with a manipulation gesture event.

```swift
struct Value
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Instance Properties

- [frame](/documentation/swiftui/manipulable/event/value-swift.struct/frame) The 3D bounding box of the manipulated view.
- [inputDevices](/documentation/swiftui/manipulable/event/value-swift.struct/inputdevices) The input devices that a person is using to manipulate a view.
- [interactionPoint](/documentation/swiftui/manipulable/event/value-swift.struct/interactionpoint) The point at which a person interacted with a view to begin manipulating it.
- [timestamp](/documentation/swiftui/manipulable/event/value-swift.struct/timestamp) The time the event was processed.
- [transform](/documentation/swiftui/manipulable/event/value-swift.struct/transform) The 3D affine transform of the manipulated view, or  if the view doesn’t have a well-defined 3D affine transfrorm.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
