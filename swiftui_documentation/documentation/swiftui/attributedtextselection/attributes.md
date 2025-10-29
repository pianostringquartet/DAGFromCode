---
title: AttributedTextSelection.Attributes
description: A sequence of all attribute values a selection has in a certain text.
source: https://developer.apple.com/documentation/swiftui/attributedtextselection/attributes
timestamp: 2025-10-29T00:14:29.188Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [attributedtextselection](/documentation/swiftui/attributedtextselection)

**Structure**

# AttributedTextSelection.Attributes

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> A sequence of all attribute values a selection has in a certain text.

```swift
struct Attributes<Text>
```

## Overview

The values of a selection are the attribute values of each run that is fully or partially selected, or the typing attributes in the case the selection is an insertion point.

By default, the sequence contains the attribute container for every run or the typing attributes. Use the [Attributes](/documentation/swiftui/attributedtextselection/attributes)’ subscript to obtain only the values for a single attribute:

```swift
selection.attributes(in: text)[\.foregroundColor].contains(.red)
```

## Conforms To

- [Sequence](/documentation/Swift/Sequence)

## Subscripts

- [subscript(_:)](/documentation/swiftui/attributedtextselection/attributes/subscript(_:)) Returns a sequence which iterates of the values of a single attribute.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
