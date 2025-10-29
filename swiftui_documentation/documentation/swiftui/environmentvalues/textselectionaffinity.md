---
title: textSelectionAffinity
description: A representation of the direction or association of a selection or cursor relative to a text character. This concept becomes much more prominent when dealing with bidirectional text (text that contains both LTR and RTL scripts, like English and Arabic combined).
source: https://developer.apple.com/documentation/swiftui/environmentvalues/textselectionaffinity
timestamp: 2025-10-29T00:13:46.822Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# textSelectionAffinity

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> A representation of the direction or association of a selection or cursor relative to a text character. This concept becomes much more prominent when dealing with bidirectional text (text that contains both LTR and RTL scripts, like English and Arabic combined).

```swift
var textSelectionAffinity: TextSelectionAffinity { get set }
```

## Discussion

You can configure the selection affinity on a given hierarchy by using the [textSelectionAffinity(_:)](/documentation/swiftui/view/textselectionaffinity(_:)) modifier.

## Selecting text

- [textSelection(_:)](/documentation/swiftui/view/textselection(_:))
- [TextSelectability](/documentation/swiftui/textselectability)
- [TextSelection](/documentation/swiftui/textselection)
- [textSelectionAffinity(_:)](/documentation/swiftui/view/textselectionaffinity(_:))
- [TextSelectionAffinity](/documentation/swiftui/textselectionaffinity)
- [AttributedTextSelection](/documentation/swiftui/attributedtextselection)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
