---
title: accessibility(selectionIdentifier:)
description: Sets a selection identifier for this view’s accessibility element.
source: https://developer.apple.com/documentation/swiftui/view/accessibility(selectionidentifier:)
timestamp: 2025-10-29T00:15:20.921Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# accessibility(selectionIdentifier:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sets a selection identifier for this view’s accessibility element.

```swift
nonisolated func accessibility(selectionIdentifier: AnyHashable) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
```

## Discussion

Picker uses the value to determine what node to use for the accessibility value.

## Accessibility modifiers

- [accessibility(label:)](/documentation/swiftui/view/accessibility(label:))
- [accessibility(value:)](/documentation/swiftui/view/accessibility(value:))
- [accessibility(hidden:)](/documentation/swiftui/view/accessibility(hidden:))
- [accessibility(identifier:)](/documentation/swiftui/view/accessibility(identifier:))
- [accessibility(hint:)](/documentation/swiftui/view/accessibility(hint:))
- [accessibility(activationPoint:)](/documentation/swiftui/view/accessibility(activationpoint:))
- [accessibility(inputLabels:)](/documentation/swiftui/view/accessibility(inputlabels:))
- [accessibility(addTraits:)](/documentation/swiftui/view/accessibility(addtraits:))
- [accessibility(removeTraits:)](/documentation/swiftui/view/accessibility(removetraits:))
- [accessibility(sortPriority:)](/documentation/swiftui/view/accessibility(sortpriority:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
