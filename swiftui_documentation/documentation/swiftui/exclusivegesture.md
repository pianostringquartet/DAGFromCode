---
title: ExclusiveGesture
description: A gesture that consists of two gestures where only one of them can succeed.
source: https://developer.apple.com/documentation/swiftui/exclusivegesture
timestamp: 2025-10-29T00:11:41.914Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ExclusiveGesture

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A gesture that consists of two gestures where only one of them can succeed.

```swift
@frozen struct ExclusiveGesture<First, Second> where First : Gesture, Second : Gesture
```

## Overview

The `ExclusiveGesture` gives precedence to its first gesture.

## Conforms To

- [Gesture](/documentation/swiftui/gesture)

## Creating the gesture

- [init(_:_:)](/documentation/swiftui/exclusivegesture/init(_:_:)) Creates a gesture from two gestures where only one of them succeeds.
- [first](/documentation/swiftui/exclusivegesture/first) The first of two gestures.
- [second](/documentation/swiftui/exclusivegesture/second) The second of two gestures.

## Supporting types

- [ExclusiveGesture.Value](/documentation/swiftui/exclusivegesture/value) The value of an exclusive gesture that indicates which of two gestures succeeded.

## Combining gestures

- [Composing SwiftUI gestures](/documentation/swiftui/composing-swiftui-gestures)
- [simultaneousGesture(_:including:)](/documentation/swiftui/view/simultaneousgesture(_:including:))
- [simultaneousGesture(_:isEnabled:)](/documentation/swiftui/view/simultaneousgesture(_:isenabled:))
- [simultaneousGesture(_:name:isEnabled:)](/documentation/swiftui/view/simultaneousgesture(_:name:isenabled:))
- [SequenceGesture](/documentation/swiftui/sequencegesture)
- [SimultaneousGesture](/documentation/swiftui/simultaneousgesture)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
