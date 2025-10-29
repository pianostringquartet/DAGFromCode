---
title: HandActivationBehavior
description: An activation behavior specific to hand-driven input.
source: https://developer.apple.com/documentation/swiftui/handactivationbehavior
timestamp: 2025-10-29T00:15:23.029Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# HandActivationBehavior

**Available on:** visionOS 1.0+

> An activation behavior specific to hand-driven input.

```swift
struct HandActivationBehavior
```

## Overview

Hand activation behavior determines what hand input modes activate a gesture.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)

## Getting the behaviors

- [automatic](/documentation/swiftui/handactivationbehavior/automatic) The default activation behavior, including direct touch, direct pinch, and indirect pinch.
- [pinch](/documentation/swiftui/handactivationbehavior/pinch) Activation that requires a pinched hand.

## Defining custom gestures

- [highPriorityGesture(_:including:)](/documentation/swiftui/view/highprioritygesture(_:including:))
- [highPriorityGesture(_:isEnabled:)](/documentation/swiftui/view/highprioritygesture(_:isenabled:))
- [highPriorityGesture(_:name:isEnabled:)](/documentation/swiftui/view/highprioritygesture(_:name:isenabled:))
- [handGestureShortcut(_:isEnabled:)](/documentation/swiftui/view/handgestureshortcut(_:isenabled:))
- [defersSystemGestures(on:)](/documentation/swiftui/view/deferssystemgestures(on:))
- [Gesture](/documentation/swiftui/gesture)
- [AnyGesture](/documentation/swiftui/anygesture)
- [HandGestureShortcut](/documentation/swiftui/handgestureshortcut)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
