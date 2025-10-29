---
title: SequenceGesture
description: A gesture that’s a sequence of two gestures.
source: https://developer.apple.com/documentation/swiftui/sequencegesture
timestamp: 2025-10-29T00:10:05.862Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SequenceGesture

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A gesture that’s a sequence of two gestures.

```swift
@frozen struct SequenceGesture<First, Second> where First : Gesture, Second : Gesture
```

## Overview

Read [Composing-Swift UI](/documentation/swiftui/composing-swiftui-gestures) to learn how you can create a sequence of two gestures.

## Conforms To

- [Gesture](/documentation/swiftui/gesture)

## Creating the gesture

- [init(_:_:)](/documentation/swiftui/sequencegesture/init(_:_:)) Creates a sequence gesture with two gestures.
- [first](/documentation/swiftui/sequencegesture/first) The first gesture in a sequence of two gestures.
- [second](/documentation/swiftui/sequencegesture/second) The second gesture in a sequence of two gestures.

## Getting the gesture’s values

- [SequenceGesture.Value](/documentation/swiftui/sequencegesture/value) The value of a sequence gesture that helps to detect whether the first gesture succeeded, so the second gesture can start.

## Combining gestures

- [Composing SwiftUI gestures](/documentation/swiftui/composing-swiftui-gestures)
- [simultaneousGesture(_:including:)](/documentation/swiftui/view/simultaneousgesture(_:including:))
- [simultaneousGesture(_:isEnabled:)](/documentation/swiftui/view/simultaneousgesture(_:isenabled:))
- [simultaneousGesture(_:name:isEnabled:)](/documentation/swiftui/view/simultaneousgesture(_:name:isenabled:))
- [SimultaneousGesture](/documentation/swiftui/simultaneousgesture)
- [ExclusiveGesture](/documentation/swiftui/exclusivegesture)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
