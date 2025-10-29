---
title: nsImage
description: The current contents of the view, rasterized as an AppKit image.
source: https://developer.apple.com/documentation/swiftui/imagerenderer/nsimage
timestamp: 2025-10-29T00:10:22.901Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [imagerenderer](/documentation/swiftui/imagerenderer)

**Instance Property**

# nsImage

**Available on:** iOS 16.0+, iPadOS 16.0+, macOS 13.0+, tvOS 16.0+, watchOS 9.0+

> The current contents of the view, rasterized as an AppKit image.

```swift
@MainActor final var nsImage: NSImage? { get }
```

## Discussion

The renderer notifies its `objectWillChange` publisher when the contents of the image may have changed.

## Rendering images

- [render(rasterizationScale:renderer:)](/documentation/swiftui/imagerenderer/render(rasterizationscale:renderer:))
- [cgImage](/documentation/swiftui/imagerenderer/cgimage)
- [uiImage](/documentation/swiftui/imagerenderer/uiimage)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
