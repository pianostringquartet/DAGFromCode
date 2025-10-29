---
title: AttributedTextSelection.Indices.insertionPoint(_:)
description: The index of a single insertion point.
source: https://developer.apple.com/documentation/swiftui/attributedtextselection/indices/insertionpoint(_:)
timestamp: 2025-10-29T00:14:50.879Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [attributedtextselection](/documentation/swiftui/attributedtextselection) › [indices](/documentation/swiftui/attributedtextselection/indices)

**Case**

# AttributedTextSelection.Indices.insertionPoint(_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> The index of a single insertion point.

```swift
case insertionPoint(AttributedString.Index)
```

## Discussion

The an insertion point at the `startIndex` of an attributed string is equivalent to a caret preceding the first character. An insertion point using `endIndex` is valid. It is equivalent to a caret located after the last character in the attributed string.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
