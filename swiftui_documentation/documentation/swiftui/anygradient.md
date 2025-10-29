---
title: AnyGradient
description: A color gradient.
source: https://developer.apple.com/documentation/swiftui/anygradient
timestamp: 2025-10-29T00:11:32.253Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# AnyGradient

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A color gradient.

```swift
@frozen struct AnyGradient
```

## Overview

When used as a [Shape Style](/documentation/swiftui/shapestyle), this type draws a linear gradient with start-point [0.5, 0] and end-point [0.5, 1].

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [ScaleRange](/documentation/Charts/ScaleRange)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [ShapeStyle](/documentation/swiftui/shapestyle)

## Creating a gradient

- [init(_:)](/documentation/swiftui/anygradient/init(_:)) Creates a new instance from the specified gradient.

## Working with color spaces

- [colorSpace(_:)](/documentation/swiftui/anygradient/colorspace(_:)) Returns a version of the gradient that will use a specified color space for interpolating between its colors.

## Styling content

- [border(_:width:)](/documentation/swiftui/view/border(_:width:))
- [foregroundStyle(_:)](/documentation/swiftui/view/foregroundstyle(_:))
- [foregroundStyle(_:_:)](/documentation/swiftui/view/foregroundstyle(_:_:))
- [foregroundStyle(_:_:_:)](/documentation/swiftui/view/foregroundstyle(_:_:_:))
- [backgroundStyle(_:)](/documentation/swiftui/view/backgroundstyle(_:))
- [backgroundStyle](/documentation/swiftui/environmentvalues/backgroundstyle)
- [ShapeStyle](/documentation/swiftui/shapestyle)
- [AnyShapeStyle](/documentation/swiftui/anyshapestyle)
- [Gradient](/documentation/swiftui/gradient)
- [MeshGradient](/documentation/swiftui/meshgradient)
- [ShadowStyle](/documentation/swiftui/shadowstyle)
- [Glass](/documentation/swiftui/glass)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
