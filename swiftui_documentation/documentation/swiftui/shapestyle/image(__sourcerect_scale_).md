---
title: image(_:sourceRect:scale:)
description: A shape style that fills a shape by repeating a region of an image.
source: https://developer.apple.com/documentation/swiftui/shapestyle/image(_:sourcerect:scale:)
timestamp: 2025-10-29T00:13:07.239Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shapestyle](/documentation/swiftui/shapestyle)

**Type Method**

# image(_:sourceRect:scale:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A shape style that fills a shape by repeating a region of an image.

```swift
static func image(_ image: Image, sourceRect: CGRect = CGRect(x: 0, y: 0, width: 1, height: 1), scale: CGFloat = 1) -> ImagePaint
```

## Parameters

**image**

The image to be drawn.



**sourceRect**

A unit-space rectangle defining how much of the source image to draw. The results are undefined if `sourceRect` selects areas outside the `[0, 1]` range in either axis.



**scale**

A scale factor applied to the image during rendering.



## Discussion

For information about how to use shape styles, see [Shape Style](/documentation/swiftui/shapestyle).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
