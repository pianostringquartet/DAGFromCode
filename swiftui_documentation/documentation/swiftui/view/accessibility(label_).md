---
title: accessibility(label:)
description: Adds a label to the view that describes its contents.
source: https://developer.apple.com/documentation/swiftui/view/accessibility(label:)
timestamp: 2025-10-29T00:14:53.530Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# accessibility(label:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Adds a label to the view that describes its contents.

```swift
nonisolated func accessibility(label: Text) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
```

## Discussion

Use this method to provide an accessibility label for a view that doesn’t display text, like an icon. For example, you could use this method to label a button that plays music with the text “Play”. Don’t include text in the label that repeats information that users already have. For example, don’t use the label “Play button” because a button already has a trait that identifies it as a button.

## Accessibility modifiers

- [accessibility(value:)](/documentation/swiftui/view/accessibility(value:))
- [accessibility(hidden:)](/documentation/swiftui/view/accessibility(hidden:))
- [accessibility(identifier:)](/documentation/swiftui/view/accessibility(identifier:))
- [accessibility(selectionIdentifier:)](/documentation/swiftui/view/accessibility(selectionidentifier:))
- [accessibility(hint:)](/documentation/swiftui/view/accessibility(hint:))
- [accessibility(activationPoint:)](/documentation/swiftui/view/accessibility(activationpoint:))
- [accessibility(inputLabels:)](/documentation/swiftui/view/accessibility(inputlabels:))
- [accessibility(addTraits:)](/documentation/swiftui/view/accessibility(addtraits:))
- [accessibility(removeTraits:)](/documentation/swiftui/view/accessibility(removetraits:))
- [accessibility(sortPriority:)](/documentation/swiftui/view/accessibility(sortpriority:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
