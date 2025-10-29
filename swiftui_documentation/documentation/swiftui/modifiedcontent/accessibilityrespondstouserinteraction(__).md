---
title: accessibilityRespondsToUserInteraction(_:)
description: Explicitly set whether this Accessibility element responds to user interaction and would thus be interacted with by technologies such as Switch Control, Voice Control or Full Keyboard Access.
source: https://developer.apple.com/documentation/swiftui/modifiedcontent/accessibilityrespondstouserinteraction(_:)
timestamp: 2025-10-29T00:10:24.114Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [modifiedcontent](/documentation/swiftui/modifiedcontent)

**Instance Method**

# accessibilityRespondsToUserInteraction(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Explicitly set whether this Accessibility element responds to user interaction and would thus be interacted with by technologies such as Switch Control, Voice Control or Full Keyboard Access.

```swift
nonisolated func accessibilityRespondsToUserInteraction(_ respondsToUserInteraction: Bool = true) -> ModifiedContent<Content, Modifier>
```

## Discussion

If this is not set, the value is inferred from the traits of the Accessibility element, the presence of Accessibility actions on the element, or the presence of gestures on the element or containing views.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
