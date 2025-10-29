---
title: accessibilityActivationPoint(_:isEnabled:)
description: The activation point for an element is the location assistive technologies use to initiate gestures.
source: https://developer.apple.com/documentation/swiftui/modifiedcontent/accessibilityactivationpoint(_:isenabled:)
timestamp: 2025-10-29T00:10:04.660Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [modifiedcontent](/documentation/swiftui/modifiedcontent)

**Instance Method**

# accessibilityActivationPoint(_:isEnabled:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> The activation point for an element is the location assistive technologies use to initiate gestures.

```swift
nonisolated func accessibilityActivationPoint(_ activationPoint: CGPoint, isEnabled: Bool) -> ModifiedContent<Content, Modifier>
```

## Parameters

**activationPoint**

The accessibility activation point to apply.



**isEnabled**

If true the accessibility activation point is applied; otherwise the accessibility activation point is unchanged.



## Discussion

Use this modifier to ensure that the activation point for a small element remains accurate even if you present a larger version of the element to VoiceOver.

If an activation point is not provided, an activation point will be derived from one of the accessibility elements decedents or from the center of the accessibility frame.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
