---
title: typingAttributes(in:)
description: Returns the typing attributes for a corresponding text.
source: https://developer.apple.com/documentation/swiftui/attributedtextselection/typingattributes(in:)
timestamp: 2025-10-29T00:11:15.962Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [attributedtextselection](/documentation/swiftui/attributedtextselection)

**Instance Method**

# typingAttributes(in:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Returns the typing attributes for a corresponding text.

```swift
func typingAttributes(in text: AttributedString) -> AttributeContainer
```

## Discussion

The typing attributes are the attributes that will be applied to any new characters typed out by the user.

> [!NOTE]
> The returned container may contain values for attributes that specify [run Boundaries](/documentation/Foundation/AttributedStringKey/runBoundaries) and thus might not actually get applied to new content.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
