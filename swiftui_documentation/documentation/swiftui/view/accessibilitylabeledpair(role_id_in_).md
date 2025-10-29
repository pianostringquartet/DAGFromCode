---
title: accessibilityLabeledPair(role:id:in:)
description: Pairs an accessibility element representing a label with the element for the matching content.
source: https://developer.apple.com/documentation/swiftui/view/accessibilitylabeledpair(role:id:in:)
timestamp: 2025-10-29T00:11:33.956Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# accessibilityLabeledPair(role:id:in:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Pairs an accessibility element representing a label with the element for the matching content.

```swift
nonisolated func accessibilityLabeledPair<ID>(role: AccessibilityLabeledPairRole, id: ID, in namespace: Namespace.ID) -> some View where ID : Hashable
```

## Parameters

**role**

Determines whether this element should be used as the label in the pair, or the content in the pair.



**id**

The identifier for the label / content pair. Elements with matching identifiers within the same namespace will be paired together.



**namespace**

The namespace used to organize label and content. Label and content under the same namespace with matching identifiers will be paired together.



## Discussion

Use `accessibilityLabeledPair` with a role of `AccessibilityLabeledPairRole.label` to identify the label, and a role of `AccessibilityLabeledPairRole.content` to identify the content. This improves the behavior of accessibility features such as VoiceOver when navigating such elements, allowing users to better understand the relationship between them.

## Applying labels

- [accessibilityLabel(_:)](/documentation/swiftui/view/accessibilitylabel(_:))
- [accessibilityLabel(_:isEnabled:)](/documentation/swiftui/view/accessibilitylabel(_:isenabled:))
- [accessibilityLabel(content:)](/documentation/swiftui/view/accessibilitylabel(content:))
- [accessibilityInputLabels(_:)](/documentation/swiftui/view/accessibilityinputlabels(_:))
- [accessibilityInputLabels(_:isEnabled:)](/documentation/swiftui/view/accessibilityinputlabels(_:isenabled:))
- [AccessibilityLabeledPairRole](/documentation/swiftui/accessibilitylabeledpairrole)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
