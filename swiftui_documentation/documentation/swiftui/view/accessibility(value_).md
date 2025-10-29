---
title: accessibility(value:)
description: Adds a textual description of the value that the view contains.
source: https://developer.apple.com/documentation/swiftui/view/accessibility(value:)
timestamp: 2025-10-29T00:10:38.259Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# accessibility(value:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Adds a textual description of the value that the view contains.

```swift
nonisolated func accessibility(value: Text) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
```

## Discussion

Use this method to describe the value represented by a view, but only if that’s different than the view’s label. For example, for a slider that you label as “Volume” using [accessibility(label:)](/documentation/swiftui/view/accessibility(label:)), you can provide the current volume setting, like “60%”, using [accessibility(value:)](/documentation/swiftui/view/accessibility(value:)).

## Accessibility modifiers

- [accessibility(label:)](/documentation/swiftui/view/accessibility(label:))
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
