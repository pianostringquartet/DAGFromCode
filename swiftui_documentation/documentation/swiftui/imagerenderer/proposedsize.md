---
title: proposedSize
description: The size proposed to the root view.
source: https://developer.apple.com/documentation/swiftui/imagerenderer/proposedsize
timestamp: 2025-10-29T00:09:25.532Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [imagerenderer](/documentation/swiftui/imagerenderer)

**Instance Property**

# proposedSize

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> The size proposed to the root view.

```swift
@MainActor final var proposedSize: ProposedViewSize { get set }
```

## Discussion

The default value of this property, [unspecified](/documentation/swiftui/proposedviewsize/unspecified), produces an image that matches the original view size. You can provide a custom [Proposed View Size](/documentation/swiftui/proposedviewsize) to override the view’s size in one or both dimensions.

## Accessing renderer properties

- [scale](/documentation/swiftui/imagerenderer/scale)
- [isOpaque](/documentation/swiftui/imagerenderer/isopaque)
- [colorMode](/documentation/swiftui/imagerenderer/colormode)
- [allowedDynamicRange](/documentation/swiftui/imagerenderer/alloweddynamicrange)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
