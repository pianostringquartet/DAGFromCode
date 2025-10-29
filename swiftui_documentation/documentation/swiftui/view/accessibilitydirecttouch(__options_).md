---
title: accessibilityDirectTouch(_:options:)
description: Explicitly set whether this accessibility element is a direct touch area. Direct touch areas passthrough touch events to the app rather than being handled through an assistive technology, such as VoiceOver. The modifier accepts an optional  option set to customize the functionality of the direct touch area.
source: https://developer.apple.com/documentation/swiftui/view/accessibilitydirecttouch(_:options:)
timestamp: 2025-10-29T00:14:24.810Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# accessibilityDirectTouch(_:options:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Explicitly set whether this accessibility element is a direct touch area. Direct touch areas passthrough touch events to the app rather than being handled through an assistive technology, such as VoiceOver. The modifier accepts an optional  option set to customize the functionality of the direct touch area.

```swift
nonisolated func accessibilityDirectTouch(_ isDirectTouchArea: Bool = true, options: AccessibilityDirectTouchOptions = []) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
```

## Discussion

For example, this is how a direct touch area would allow a VoiceOver user to interact with a view with a `rotationEffect` controlled by a `RotationGesture`. The direct touch area would require a user to activate the area before using the direct touch area.

```swift
var body: some View {
    Rectangle()
        .frame(width: 200, height: 200, alignment: .center)
        .rotationEffect(angle)
        .gesture(rotation)
        .accessibilityDirectTouch(options: .requiresActivation)
}
```

## Making gestures accessible

- [accessibilityActivationPoint(_:)](/documentation/swiftui/view/accessibilityactivationpoint(_:))
- [accessibilityActivationPoint(_:isEnabled:)](/documentation/swiftui/view/accessibilityactivationpoint(_:isenabled:))
- [accessibilityDragPoint(_:description:)](/documentation/swiftui/view/accessibilitydragpoint(_:description:))
- [accessibilityDragPoint(_:description:isEnabled:)](/documentation/swiftui/view/accessibilitydragpoint(_:description:isenabled:))
- [accessibilityDropPoint(_:description:)](/documentation/swiftui/view/accessibilitydroppoint(_:description:))
- [accessibilityDropPoint(_:description:isEnabled:)](/documentation/swiftui/view/accessibilitydroppoint(_:description:isenabled:))
- [accessibilityZoomAction(_:)](/documentation/swiftui/view/accessibilityzoomaction(_:))
- [AccessibilityDirectTouchOptions](/documentation/swiftui/accessibilitydirecttouchoptions)
- [AccessibilityZoomGestureAction](/documentation/swiftui/accessibilityzoomgestureaction)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
