---
title: sizeThatFits(proposal:text:)
description: Returns the size of the text in . The provided  proxy value may be used to query the sizing behavior of the underlying text layout.
source: https://developer.apple.com/documentation/swiftui/textrenderer/sizethatfits(proposal:text:)
timestamp: 2025-10-29T00:15:01.523Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [textrenderer](/documentation/swiftui/textrenderer)

**Instance Method**

# sizeThatFits(proposal:text:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Returns the size of the text in . The provided  proxy value may be used to query the sizing behavior of the underlying text layout.

```swift
func sizeThatFits(proposal: ProposedViewSize, text: TextProxy) -> CGSize
```

## Discussion

The default implementation of this function returns `text.size(proposal)`.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
