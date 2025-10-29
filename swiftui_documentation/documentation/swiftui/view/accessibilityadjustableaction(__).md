---
title: accessibilityAdjustableAction(_:)
description: Adds an accessibility adjustable action to the view. Actions allow assistive technologies, such as the VoiceOver, to interact with the view by invoking the action.
source: https://developer.apple.com/documentation/swiftui/view/accessibilityadjustableaction(_:)
timestamp: 2025-10-29T00:13:30.652Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# accessibilityAdjustableAction(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Adds an accessibility adjustable action to the view. Actions allow assistive technologies, such as the VoiceOver, to interact with the view by invoking the action.

```swift
nonisolated func accessibilityAdjustableAction(_ handler: @escaping (AccessibilityAdjustmentDirection) -> Void) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
```

## Discussion

For example, this is how an adjustable action to navigate through pages could be added to a view.

```swift
var body: some View {
    PageControl()
        .accessibilityAdjustableAction { direction in
            switch direction {
            case .increment:
                // Go to next page
            case .decrement:
                // Go to previous page
            }
        }
}
```

## Adding actions to views

- [accessibilityAction(_:_:)](/documentation/swiftui/view/accessibilityaction(_:_:))
- [accessibilityActions(_:)](/documentation/swiftui/view/accessibilityactions(_:))
- [accessibilityAction(named:_:)](/documentation/swiftui/view/accessibilityaction(named:_:))
- [accessibilityAction(action:label:)](/documentation/swiftui/view/accessibilityaction(action:label:))
- [accessibilityAction(intent:label:)](/documentation/swiftui/view/accessibilityaction(intent:label:))
- [accessibilityAction(_:intent:)](/documentation/swiftui/view/accessibilityaction(_:intent:))
- [accessibilityAction(named:intent:)](/documentation/swiftui/view/accessibilityaction(named:intent:))
- [accessibilityScrollAction(_:)](/documentation/swiftui/view/accessibilityscrollaction(_:))
- [accessibilityActions(category:_:)](/documentation/swiftui/view/accessibilityactions(category:_:))
- [AccessibilityActionKind](/documentation/swiftui/accessibilityactionkind)
- [AccessibilityAdjustmentDirection](/documentation/swiftui/accessibilityadjustmentdirection)
- [AccessibilityActionCategory](/documentation/swiftui/accessibilityactioncategory)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
