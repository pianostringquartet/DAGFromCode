---
title: accessibilityAction(intent:label:)
description: Adds an accessibility action labeled by the contents of  to the view. Actions allow assistive technologies, such as the VoiceOver, to interact with the view by invoking the action. When the action is performed, the  will be invoked.
source: https://developer.apple.com/documentation/swiftui/view/accessibilityaction(intent:label:)
timestamp: 2025-10-29T00:13:18.139Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# accessibilityAction(intent:label:)

**Available on:** iOS 18.0+, iPadOS 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Adds an accessibility action labeled by the contents of  to the view. Actions allow assistive technologies, such as the VoiceOver, to interact with the view by invoking the action. When the action is performed, the  will be invoked.

```swift
nonisolated func accessibilityAction<I, Label>(intent: I, @ViewBuilder label: () -> Label) -> some View where I : AppIntent, Label : View
```

## Adding actions to views

- [accessibilityAction(_:_:)](/documentation/swiftui/view/accessibilityaction(_:_:))
- [accessibilityActions(_:)](/documentation/swiftui/view/accessibilityactions(_:))
- [accessibilityAction(named:_:)](/documentation/swiftui/view/accessibilityaction(named:_:))
- [accessibilityAction(action:label:)](/documentation/swiftui/view/accessibilityaction(action:label:))
- [accessibilityAction(_:intent:)](/documentation/swiftui/view/accessibilityaction(_:intent:))
- [accessibilityAction(named:intent:)](/documentation/swiftui/view/accessibilityaction(named:intent:))
- [accessibilityAdjustableAction(_:)](/documentation/swiftui/view/accessibilityadjustableaction(_:))
- [accessibilityScrollAction(_:)](/documentation/swiftui/view/accessibilityscrollaction(_:))
- [accessibilityActions(category:_:)](/documentation/swiftui/view/accessibilityactions(category:_:))
- [AccessibilityActionKind](/documentation/swiftui/accessibilityactionkind)
- [AccessibilityAdjustmentDirection](/documentation/swiftui/accessibilityadjustmentdirection)
- [AccessibilityActionCategory](/documentation/swiftui/accessibilityactioncategory)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
