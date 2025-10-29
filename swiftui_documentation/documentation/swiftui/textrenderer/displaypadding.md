---
title: displayPadding
description: Returns the size of the extra padding added to any drawing layer used to rasterize the text. For example when drawing the text with a shadow this may be used to extend the drawing bounds to avoid clipping the shadow.
source: https://developer.apple.com/documentation/swiftui/textrenderer/displaypadding
timestamp: 2025-10-29T00:12:35.287Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [textrenderer](/documentation/swiftui/textrenderer)

**Instance Property**

# displayPadding

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Returns the size of the extra padding added to any drawing layer used to rasterize the text. For example when drawing the text with a shadow this may be used to extend the drawing bounds to avoid clipping the shadow.

```swift
var displayPadding: EdgeInsets { get }
```

## Discussion

The default implementation of this function returns an empty set of insets.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
