---
title: tiledImage(_:origin:sourceRect:scale:)
description: Returns a shading instance that tiles an image across the infinite plane.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/shading/tiledimage(_:origin:sourcerect:scale:)
timestamp: 2025-10-29T00:09:20.219Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [shading](/documentation/swiftui/graphicscontext/shading)

**Type Method**

# tiledImage(_:origin:sourceRect:scale:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Returns a shading instance that tiles an image across the infinite plane.

```swift
static func tiledImage(_ image: Image, origin: CGPoint = .zero, sourceRect: CGRect = CGRect(x: 0, y: 0, width: 1, height: 1), scale: CGFloat = 1) -> GraphicsContext.Shading
```

## Parameters

**image**

An [Image](/documentation/swiftui/image) to use as fill.



**origin**

The point in the current user space where SwiftUI places the bottom left corner of the part of the image defined by `sourceRect`. The image repeats as needed.



**sourceRect**

A unit space subregion of the image. The default is a unit rectangle, which selects the whole image.



**scale**

A factor that you can use to control the image size.



## Return Value

A shading instance filled with a tiled image.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
