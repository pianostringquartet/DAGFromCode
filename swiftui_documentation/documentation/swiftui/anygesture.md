---
title: AnyGesture
description: A type-erased gesture.
source: https://developer.apple.com/documentation/swiftui/anygesture
timestamp: 2025-10-29T00:14:59.618Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# AnyGesture

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A type-erased gesture.

```swift
@frozen struct AnyGesture<Value>
```

## Conforms To

- [Gesture](/documentation/swiftui/gesture)

## Implementing a custom gesture

- [init(_:)](/documentation/swiftui/anygesture/init(_:)) Creates an instance from another gesture.

## Defining custom gestures

- [highPriorityGesture(_:including:)](/documentation/swiftui/view/highprioritygesture(_:including:))
- [highPriorityGesture(_:isEnabled:)](/documentation/swiftui/view/highprioritygesture(_:isenabled:))
- [highPriorityGesture(_:name:isEnabled:)](/documentation/swiftui/view/highprioritygesture(_:name:isenabled:))
- [handGestureShortcut(_:isEnabled:)](/documentation/swiftui/view/handgestureshortcut(_:isenabled:))
- [defersSystemGestures(on:)](/documentation/swiftui/view/deferssystemgestures(on:))
- [Gesture](/documentation/swiftui/gesture)
- [HandActivationBehavior](/documentation/swiftui/handactivationbehavior)
- [HandGestureShortcut](/documentation/swiftui/handgestureshortcut)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
