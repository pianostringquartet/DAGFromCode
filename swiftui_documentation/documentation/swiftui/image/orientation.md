---
title: Image.Orientation
description: The orientation of an image.
source: https://developer.apple.com/documentation/swiftui/image/orientation
timestamp: 2025-10-29T00:15:03.362Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [image](/documentation/swiftui/image)

**Enumeration**

# Image.Orientation

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The orientation of an image.

```swift
@frozen enum Orientation
```

## Overview

Many image formats such as JPEG include orientation metadata in the image data. In other cases, you can specify image orientation in code. Properly specifying orientation is often important both for displaying the image and for certain kinds of image processing.

In SwiftUI, you provide an orientation value when initializing an [Image](/documentation/swiftui/image) from an existing [CGImage](/documentation/CoreGraphics/CGImage).

## Conforms To

- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [CaseIterable](/documentation/Swift/CaseIterable)
- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [RawRepresentable](/documentation/Swift/RawRepresentable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting image orientations

- [Image.Orientation.up](/documentation/swiftui/image/orientation/up) A value that indicates the original pixel data matches the image’s intended display orientation.
- [Image.Orientation.down](/documentation/swiftui/image/orientation/down) A value that indicates a 180° rotation of the image from the orientation of its original pixel data.
- [Image.Orientation.left](/documentation/swiftui/image/orientation/left) A value that indicates a 90° counterclockwise rotation from the orientation of its original pixel data.
- [Image.Orientation.right](/documentation/swiftui/image/orientation/right) A value that indicates a 90° clockwise rotation of the image from the orientation of its original pixel data.

## Getting mirrored image orientation

- [Image.Orientation.upMirrored](/documentation/swiftui/image/orientation/upmirrored) A value that indicates a horizontal flip of the image from the orientation of its original pixel data.
- [Image.Orientation.downMirrored](/documentation/swiftui/image/orientation/downmirrored) A value that indicates a vertical flip of the image from the orientation of its original pixel data.
- [Image.Orientation.leftMirrored](/documentation/swiftui/image/orientation/leftmirrored) A value that indicates a 90° clockwise rotation and horizontal flip of the image from the orientation of its original pixel data.
- [Image.Orientation.rightMirrored](/documentation/swiftui/image/orientation/rightmirrored) A value that indicates a 90° counterclockwise rotation and horizontal flip from the orientation of its original pixel data.

## Configuring an image

- [Fitting images into available space](/documentation/swiftui/fitting-images-into-available-space)
- [imageScale(_:)](/documentation/swiftui/view/imagescale(_:))
- [imageScale](/documentation/swiftui/environmentvalues/imagescale)
- [Image.Scale](/documentation/swiftui/image/scale)
- [Image.ResizingMode](/documentation/swiftui/image/resizingmode)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
