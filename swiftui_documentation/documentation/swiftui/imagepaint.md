---
title: ImagePaint
description: A shape style that fills a shape by repeating a region of an image.
source: https://developer.apple.com/documentation/swiftui/imagepaint
timestamp: 2025-10-29T00:12:41.507Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ImagePaint

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A shape style that fills a shape by repeating a region of an image.

```swift
@frozen struct ImagePaint
```

## Overview

You can also use [image(_:sourceRect:scale:)](/documentation/swiftui/shapestyle/image(_:sourcerect:scale:)) to construct this style.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [ShapeStyle](/documentation/swiftui/shapestyle)

## Creating an image paint style

- [init(image:sourceRect:scale:)](/documentation/swiftui/imagepaint/init(image:sourcerect:scale:)) Creates a shape-filling shape style.

## Configuring the image paint style

- [image](/documentation/swiftui/imagepaint/image) The image to be drawn.
- [scale](/documentation/swiftui/imagepaint/scale) A scale factor applied to the image while being drawn.
- [sourceRect](/documentation/swiftui/imagepaint/sourcerect) A unit-space rectangle defining how much of the source image to draw.

## Supporting types

- [AngularGradient](/documentation/swiftui/angulargradient)
- [EllipticalGradient](/documentation/swiftui/ellipticalgradient)
- [LinearGradient](/documentation/swiftui/lineargradient)
- [RadialGradient](/documentation/swiftui/radialgradient)
- [Material](/documentation/swiftui/material)
- [HierarchicalShapeStyle](/documentation/swiftui/hierarchicalshapestyle)
- [HierarchicalShapeStyleModifier](/documentation/swiftui/hierarchicalshapestylemodifier)
- [ForegroundStyle](/documentation/swiftui/foregroundstyle)
- [BackgroundStyle](/documentation/swiftui/backgroundstyle)
- [SelectionShapeStyle](/documentation/swiftui/selectionshapestyle)
- [SeparatorShapeStyle](/documentation/swiftui/separatorshapestyle)
- [TintShapeStyle](/documentation/swiftui/tintshapestyle)
- [FillShapeStyle](/documentation/swiftui/fillshapestyle)
- [LinkShapeStyle](/documentation/swiftui/linkshapestyle)
- [PlaceholderTextShapeStyle](/documentation/swiftui/placeholdertextshapestyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
