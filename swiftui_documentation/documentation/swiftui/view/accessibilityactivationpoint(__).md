---
title: accessibilityActivationPoint(_:)
description: The activation point for an element is the location assistive technologies use to initiate gestures.
source: https://developer.apple.com/documentation/swiftui/view/accessibilityactivationpoint(_:)
timestamp: 2025-10-29T00:13:13.149Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# accessibilityActivationPoint(_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> The activation point for an element is the location assistive technologies use to initiate gestures.

```swift
nonisolated func accessibilityActivationPoint(_ activationPoint: CGPoint) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
```

## Discussion

Use this modifier to ensure that the activation point for a small element remains accurate even if you present a larger version of the element to VoiceOver.

If an activation point is not provided, an activation point will be derrived from one of the accessibility elements decendents or from the center of the accessibility frame.

## Making gestures accessible

- [accessibilityActivationPoint(_:isEnabled:)](/documentation/swiftui/view/accessibilityactivationpoint(_:isenabled:))
- [accessibilityDragPoint(_:description:)](/documentation/swiftui/view/accessibilitydragpoint(_:description:))
- [accessibilityDragPoint(_:description:isEnabled:)](/documentation/swiftui/view/accessibilitydragpoint(_:description:isenabled:))
- [accessibilityDropPoint(_:description:)](/documentation/swiftui/view/accessibilitydroppoint(_:description:))
- [accessibilityDropPoint(_:description:isEnabled:)](/documentation/swiftui/view/accessibilitydroppoint(_:description:isenabled:))
- [accessibilityDirectTouch(_:options:)](/documentation/swiftui/view/accessibilitydirecttouch(_:options:))
- [accessibilityZoomAction(_:)](/documentation/swiftui/view/accessibilityzoomaction(_:))
- [AccessibilityDirectTouchOptions](/documentation/swiftui/accessibilitydirecttouchoptions)
- [AccessibilityZoomGestureAction](/documentation/swiftui/accessibilityzoomgestureaction)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
