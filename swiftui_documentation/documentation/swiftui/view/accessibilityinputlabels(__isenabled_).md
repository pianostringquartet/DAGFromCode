---
title: accessibilityInputLabels(_:isEnabled:)
description: Sets alternate input labels with which users identify a view.
source: https://developer.apple.com/documentation/swiftui/view/accessibilityinputlabels(_:isenabled:)
timestamp: 2025-10-29T00:11:19.534Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# accessibilityInputLabels(_:isEnabled:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Sets alternate input labels with which users identify a view.

```swift
nonisolated func accessibilityInputLabels(_ inputLabelKeys: [LocalizedStringKey], isEnabled: Bool) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
```

## Parameters

**inputLabelKeys**

The accessibility input labels to apply.



**isEnabled**

If true the accessibility input labels are applied; otherwise the accessibility input labels are unchanged.



## Discussion

Provide labels in descending order of importance. Voice Control and Full Keyboard Access use the input labels.

> [!NOTE]
> If you don’t specify any input labels, the user can still refer to the view using the accessibility label that you add with the `accessibilityLabel()` modifier.

## Applying labels

- [accessibilityLabel(_:)](/documentation/swiftui/view/accessibilitylabel(_:))
- [accessibilityLabel(_:isEnabled:)](/documentation/swiftui/view/accessibilitylabel(_:isenabled:))
- [accessibilityLabel(content:)](/documentation/swiftui/view/accessibilitylabel(content:))
- [accessibilityInputLabels(_:)](/documentation/swiftui/view/accessibilityinputlabels(_:))
- [accessibilityLabeledPair(role:id:in:)](/documentation/swiftui/view/accessibilitylabeledpair(role:id:in:))
- [AccessibilityLabeledPairRole](/documentation/swiftui/accessibilitylabeledpairrole)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
