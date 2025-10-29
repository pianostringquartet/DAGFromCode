---
title: AccessibilityZoomGestureAction
description: Position and direction information of a zoom gesture that someone performs with an assistive technology like VoiceOver.
source: https://developer.apple.com/documentation/swiftui/accessibilityzoomgestureaction
timestamp: 2025-10-29T00:12:29.415Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# AccessibilityZoomGestureAction

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Position and direction information of a zoom gesture that someone performs with an assistive technology like VoiceOver.

```swift
struct AccessibilityZoomGestureAction
```

## Getting the action’s direction

- [direction](/documentation/swiftui/accessibilityzoomgestureaction/direction-swift.property) The zoom gesture’s direction.
- [AccessibilityZoomGestureAction.Direction](/documentation/swiftui/accessibilityzoomgestureaction/direction-swift.enum) A direction that matches the movement of a zoom gesture performed by an assistive technology, such as a swipe up and down in Voiceover’s zoom rotor.

## Getting location information

- [location](/documentation/swiftui/accessibilityzoomgestureaction/location) The zoom gesture’s activation point, normalized to the accessibility element’s frame.
- [point](/documentation/swiftui/accessibilityzoomgestureaction/point) The zoom gesture’s activation point within the window’s coordinate space.

## Making gestures accessible

- [accessibilityActivationPoint(_:)](/documentation/swiftui/view/accessibilityactivationpoint(_:))
- [accessibilityActivationPoint(_:isEnabled:)](/documentation/swiftui/view/accessibilityactivationpoint(_:isenabled:))
- [accessibilityDragPoint(_:description:)](/documentation/swiftui/view/accessibilitydragpoint(_:description:))
- [accessibilityDragPoint(_:description:isEnabled:)](/documentation/swiftui/view/accessibilitydragpoint(_:description:isenabled:))
- [accessibilityDropPoint(_:description:)](/documentation/swiftui/view/accessibilitydroppoint(_:description:))
- [accessibilityDropPoint(_:description:isEnabled:)](/documentation/swiftui/view/accessibilitydroppoint(_:description:isenabled:))
- [accessibilityDirectTouch(_:options:)](/documentation/swiftui/view/accessibilitydirecttouch(_:options:))
- [accessibilityZoomAction(_:)](/documentation/swiftui/view/accessibilityzoomaction(_:))
- [AccessibilityDirectTouchOptions](/documentation/swiftui/accessibilitydirecttouchoptions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
