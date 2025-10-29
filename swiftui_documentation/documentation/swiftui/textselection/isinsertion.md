---
title: isInsertion
description: Return  if the selection is an insertion point.
source: https://developer.apple.com/documentation/swiftui/textselection/isinsertion
timestamp: 2025-10-29T00:09:47.721Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [textselection](/documentation/swiftui/textselection)

**Instance Property**

# isInsertion

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Return  if the selection is an insertion point.

```swift
var isInsertion: Bool { get }
```

## Discussion

An insertion point effectively represents a range that contains no characters, indicating a location in the string. This location refers to the point in the text where new characters will be inserted. In other words, it represents cases when the start and end index are equal.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
