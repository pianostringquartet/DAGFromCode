---
title: SimultaneousGesture
description: A gesture containing two gestures that can happen at the same time with neither of them preceding the other.
source: https://developer.apple.com/documentation/swiftui/simultaneousgesture
timestamp: 2025-10-29T00:10:13.293Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SimultaneousGesture

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A gesture containing two gestures that can happen at the same time with neither of them preceding the other.

```swift
@frozen struct SimultaneousGesture<First, Second> where First : Gesture, Second : Gesture
```

## Overview

A simultaneous gesture is a container-event handler that evaluates its two child gestures at the same time. Its value is a struct with two optional values, each representing the phases of one of the two gestures.

## Conforms To

- [Gesture](/documentation/swiftui/gesture)

## Creating the gesture

- [init(_:_:)](/documentation/swiftui/simultaneousgesture/init(_:_:)) Creates a gesture with two gestures that can receive updates or succeed independently of each other.
- [first](/documentation/swiftui/simultaneousgesture/first) The first of two gestures that can happen simultaneously.
- [second](/documentation/swiftui/simultaneousgesture/second) The second of two gestures that can happen simultaneously.

## Getting the gesture’s values

- [SimultaneousGesture.Value](/documentation/swiftui/simultaneousgesture/value) The value of a simultaneous gesture that indicates which of its two gestures receives events.

## Combining gestures

- [Composing SwiftUI gestures](/documentation/swiftui/composing-swiftui-gestures)
- [simultaneousGesture(_:including:)](/documentation/swiftui/view/simultaneousgesture(_:including:))
- [simultaneousGesture(_:isEnabled:)](/documentation/swiftui/view/simultaneousgesture(_:isenabled:))
- [simultaneousGesture(_:name:isEnabled:)](/documentation/swiftui/view/simultaneousgesture(_:name:isenabled:))
- [SequenceGesture](/documentation/swiftui/sequencegesture)
- [ExclusiveGesture](/documentation/swiftui/exclusivegesture)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
