---
title: accessibilityLabel(_:)
description: Adds a label to the view that describes its contents.
source: https://developer.apple.com/documentation/swiftui/view/accessibilitylabel(_:)
timestamp: 2025-10-29T00:14:53.305Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# accessibilityLabel(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Adds a label to the view that describes its contents.

```swift
nonisolated func accessibilityLabel(_ label: LocalizedStringResource) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
```

## Discussion

Use this method to provide an accessibility label for a view that doesn’t display text, like an icon. For example, you could use this method to label a button that plays music with the text “Play”. Don’t include text in the label that repeats information that users already have. For example, don’t use the label “Play button” because a button already has a trait that identifies it as a button.

## Applying labels

- [accessibilityLabel(_:isEnabled:)](/documentation/swiftui/view/accessibilitylabel(_:isenabled:))
- [accessibilityLabel(content:)](/documentation/swiftui/view/accessibilitylabel(content:))
- [accessibilityInputLabels(_:)](/documentation/swiftui/view/accessibilityinputlabels(_:))
- [accessibilityInputLabels(_:isEnabled:)](/documentation/swiftui/view/accessibilityinputlabels(_:isenabled:))
- [accessibilityLabeledPair(role:id:in:)](/documentation/swiftui/view/accessibilitylabeledpair(role:id:in:))
- [AccessibilityLabeledPairRole](/documentation/swiftui/accessibilitylabeledpairrole)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
