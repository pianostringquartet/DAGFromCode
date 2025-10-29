---
title: cgImage
description: The current contents of the view, rasterized as a Core Graphics image.
source: https://developer.apple.com/documentation/swiftui/imagerenderer/cgimage
timestamp: 2025-10-29T00:11:28.226Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [imagerenderer](/documentation/swiftui/imagerenderer)

**Instance Property**

# cgImage

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> The current contents of the view, rasterized as a Core Graphics image.

```swift
@MainActor final var cgImage: CGImage? { get }
```

## Discussion

The renderer notifies its `objectWillChange` publisher when the contents of the image may have changed.

## Rendering images

- [render(rasterizationScale:renderer:)](/documentation/swiftui/imagerenderer/render(rasterizationscale:renderer:))
- [nsImage](/documentation/swiftui/imagerenderer/nsimage)
- [uiImage](/documentation/swiftui/imagerenderer/uiimage)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
