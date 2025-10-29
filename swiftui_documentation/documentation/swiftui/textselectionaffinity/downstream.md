---
title: TextSelectionAffinity.downstream
description: An downstream selection affinity. In this case, the cursor is associated with the character immediately after it.
source: https://developer.apple.com/documentation/swiftui/textselectionaffinity/downstream
timestamp: 2025-10-29T00:14:06.676Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [textselectionaffinity](/documentation/swiftui/textselectionaffinity)

**Case**

# TextSelectionAffinity.downstream

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> An downstream selection affinity. In this case, the cursor is associated with the character immediately after it.

```swift
case downstream
```

## Discussion

In the context of our example `hello|مرحبا`, with a downstream affinity, the cursor would be associated with the first character of “مرحبا”. If you were to type in Arabic, the characters would be added before the “م” in “مرحبا”, since Arabic is written right-to-left.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
