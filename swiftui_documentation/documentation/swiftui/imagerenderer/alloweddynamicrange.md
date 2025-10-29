---
title: allowedDynamicRange
description: The allowed dynamic range of the image, or nil to mark that the dynamic range of the image should be unrestricted. This property defaults to , i.e. HDR content will be tone mapped to SDR.
source: https://developer.apple.com/documentation/swiftui/imagerenderer/alloweddynamicrange
timestamp: 2025-10-29T00:09:56.107Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [imagerenderer](/documentation/swiftui/imagerenderer)

**Instance Property**

# allowedDynamicRange

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+

> The allowed dynamic range of the image, or nil to mark that the dynamic range of the image should be unrestricted. This property defaults to , i.e. HDR content will be tone mapped to SDR.

```swift
@MainActor final var allowedDynamicRange: Image.DynamicRange? { get set }
```

## Accessing renderer properties

- [proposedSize](/documentation/swiftui/imagerenderer/proposedsize)
- [scale](/documentation/swiftui/imagerenderer/scale)
- [isOpaque](/documentation/swiftui/imagerenderer/isopaque)
- [colorMode](/documentation/swiftui/imagerenderer/colormode)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
