---
title: uiImage
description: The current contents of the view, rasterized as a UIKit image.
source: https://developer.apple.com/documentation/swiftui/imagerenderer/uiimage
timestamp: 2025-10-29T00:09:59.039Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [imagerenderer](/documentation/swiftui/imagerenderer)

**Instance Property**

# uiImage

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> The current contents of the view, rasterized as a UIKit image.

```swift
@MainActor final var uiImage: UIImage? { get }
```

## Discussion

The renderer notifies its `objectWillChange` publisher when the contents of the image may have changed.

## Rendering images

- [render(rasterizationScale:renderer:)](/documentation/swiftui/imagerenderer/render(rasterizationscale:renderer:))
- [cgImage](/documentation/swiftui/imagerenderer/cgimage)
- [nsImage](/documentation/swiftui/imagerenderer/nsimage)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
