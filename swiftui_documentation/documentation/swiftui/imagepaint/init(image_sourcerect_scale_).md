---
title: init(image:sourceRect:scale:)
description: Creates a shape-filling shape style.
source: https://developer.apple.com/documentation/swiftui/imagepaint/init(image:sourcerect:scale:)
timestamp: 2025-10-29T00:09:45.519Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [imagepaint](/documentation/swiftui/imagepaint)

**Initializer**

# init(image:sourceRect:scale:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a shape-filling shape style.

```swift
init(image: Image, sourceRect: CGRect = CGRect(x: 0, y: 0, width: 1, height: 1), scale: CGFloat = 1)
```

## Parameters

**image**

The image to be drawn.



**sourceRect**

A unit-space rectangle defining how much of the source image to draw. The results are undefined if `sourceRect` selects areas outside the `[0, 1]` range in either axis.



**scale**

A scale factor applied to the image during rendering.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
