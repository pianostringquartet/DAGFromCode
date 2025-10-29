---
title: init(insertionPoint:typingAttributes:)
description: Initialize a selection to a single insertion point.
source: https://developer.apple.com/documentation/swiftui/attributedtextselection/init(insertionpoint:typingattributes:)
timestamp: 2025-10-29T00:13:00.487Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [attributedtextselection](/documentation/swiftui/attributedtextselection)

**Initializer**

# init(insertionPoint:typingAttributes:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Initialize a selection to a single insertion point.

```swift
init(insertionPoint: AttributedString.Index, typingAttributes: AttributeContainer? = nil)
```

## Parameters

**insertionPoint**

The index of the string where the charet should be positioned.



**typingAttributes**

The attributes for the next character that is typed, or `nil` if they should be inferred from the attributes on the text.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
