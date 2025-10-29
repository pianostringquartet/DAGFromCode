---
title: attributes(in:)
description: Obtain a lazy sequence of all attribute values the selection has in a given text.
source: https://developer.apple.com/documentation/swiftui/attributedtextselection/attributes(in:)
timestamp: 2025-10-29T00:15:12.064Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [attributedtextselection](/documentation/swiftui/attributedtextselection)

**Instance Method**

# attributes(in:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Obtain a lazy sequence of all attribute values the selection has in a given text.

```swift
func attributes(in text: AttributedString) -> AttributedTextSelection.Attributes<AttributedString>
```

## Discussion

The attribute values of a selection are the attribute values of each run that is fully or partially selected, or the typing attributes in the case the selection is an insertion point.

By default, the sequence contains the attribute container for every run or the typing attributes. Use the [Attributes](/documentation/swiftui/attributedtextselection/attributes)’ subscript to obtain only the values for a single attribute:

```swift
selection.attributes(in: text)[\.foregroundColor].contains(.red)
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
