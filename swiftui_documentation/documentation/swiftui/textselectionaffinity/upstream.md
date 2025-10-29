---
title: TextSelectionAffinity.upstream
description: An upstream selection affinity. In this case, the cursor is associated with the character immediately before it.
source: https://developer.apple.com/documentation/swiftui/textselectionaffinity/upstream
timestamp: 2025-10-29T00:10:07.900Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [textselectionaffinity](/documentation/swiftui/textselectionaffinity)

**Case**

# TextSelectionAffinity.upstream

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> An upstream selection affinity. In this case, the cursor is associated with the character immediately before it.

```swift
case upstream
```

## Discussion

In the context of our example  `hello|مرحبا`, with an upstream affinity, the cursor would be associated with the “o” from “hello”. If you were to type in English, the characters would continue to be added after the “o” in “hello”.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
