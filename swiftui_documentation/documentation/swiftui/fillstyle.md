---
title: FillStyle
description: A style for rasterizing vector shapes.
source: https://developer.apple.com/documentation/swiftui/fillstyle
timestamp: 2025-10-29T00:15:12.960Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# FillStyle

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A style for rasterizing vector shapes.

```swift
@frozen struct FillStyle
```

## Conforms To

- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Creating a fill style

- [init(eoFill:antialiased:)](/documentation/swiftui/fillstyle/init(eofill:antialiased:)) Creates a new fill style with the specified settings.

## Setting fill style properties

- [isEOFilled](/documentation/swiftui/fillstyle/iseofilled) A Boolean value that indicates whether to use the even-odd rule when rendering a shape.
- [isAntialiased](/documentation/swiftui/fillstyle/isantialiased) A Boolean value that indicates whether to apply antialiasing to the edges of a shape.

## Defining shape behavior

- [ShapeView](/documentation/swiftui/shapeview)
- [Shape](/documentation/swiftui/shape)
- [AnyShape](/documentation/swiftui/anyshape)
- [ShapeRole](/documentation/swiftui/shaperole)
- [StrokeStyle](/documentation/swiftui/strokestyle)
- [StrokeShapeView](/documentation/swiftui/strokeshapeview)
- [StrokeBorderShapeView](/documentation/swiftui/strokebordershapeview)
- [FillShapeView](/documentation/swiftui/fillshapeview)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
