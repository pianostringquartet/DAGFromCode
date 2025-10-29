---
title: accessibilityRespondsToUserInteraction(_:isEnabled:)
description: Explicitly set whether this Accessibility element responds to user interaction and would thus be interacted with by technologies such as Switch Control, Voice Control or Full Keyboard Access.
source: https://developer.apple.com/documentation/swiftui/modifiedcontent/accessibilityrespondstouserinteraction(_:isenabled:)
timestamp: 2025-10-29T00:13:58.682Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [modifiedcontent](/documentation/swiftui/modifiedcontent)

**Instance Method**

# accessibilityRespondsToUserInteraction(_:isEnabled:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Explicitly set whether this Accessibility element responds to user interaction and would thus be interacted with by technologies such as Switch Control, Voice Control or Full Keyboard Access.

```swift
nonisolated func accessibilityRespondsToUserInteraction(_ respondsToUserInteraction: Bool, isEnabled: Bool) -> ModifiedContent<Content, Modifier>
```

## Parameters

**respondsToUserInteraction**

Whether the view responds to user interaction.



**isEnabled**

If true the accessibility interaction state is applied; otherwise the accessibility interaction state is unchanged.



## Discussion

If this is not set, the value is inferred from the traits of the Accessibility element, the presence of Accessibility actions on the element, or the presence of gestures on the element or containing views.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
