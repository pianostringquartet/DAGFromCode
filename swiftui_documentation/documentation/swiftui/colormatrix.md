---
title: ColorMatrix
description: A matrix to use in an RGBA color transformation.
source: https://developer.apple.com/documentation/swiftui/colormatrix
timestamp: 2025-10-29T00:10:02.741Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ColorMatrix

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A matrix to use in an RGBA color transformation.

```swift
@frozen struct ColorMatrix
```

## Overview

The matrix has five columns, each with a red, green, blue, and alpha component. You can use the matrix for tasks like creating a color transformation [Filter](/documentation/swiftui/graphicscontext/filter) for a [Graphics Context](/documentation/swiftui/graphicscontext) using the [colorMatrix(_:)](/documentation/swiftui/graphicscontext/filter/colormatrix(_:)) method.

## Conforms To

- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Creating an identity matrix

- [init()](/documentation/swiftui/colormatrix/init()) Creates the identity matrix.

## First column

- [r1](/documentation/swiftui/colormatrix/r1)
- [g1](/documentation/swiftui/colormatrix/g1)
- [b1](/documentation/swiftui/colormatrix/b1)
- [a1](/documentation/swiftui/colormatrix/a1)

## Second column

- [r2](/documentation/swiftui/colormatrix/r2)
- [g2](/documentation/swiftui/colormatrix/g2)
- [b2](/documentation/swiftui/colormatrix/b2)
- [a2](/documentation/swiftui/colormatrix/a2)

## Third column

- [r3](/documentation/swiftui/colormatrix/r3)
- [g3](/documentation/swiftui/colormatrix/g3)
- [b3](/documentation/swiftui/colormatrix/b3)
- [a3](/documentation/swiftui/colormatrix/a3)

## Fourth column

- [r4](/documentation/swiftui/colormatrix/r4)
- [g4](/documentation/swiftui/colormatrix/g4)
- [b4](/documentation/swiftui/colormatrix/b4)
- [a4](/documentation/swiftui/colormatrix/a4)

## Fifth column

- [r5](/documentation/swiftui/colormatrix/r5)
- [g5](/documentation/swiftui/colormatrix/g5)
- [b5](/documentation/swiftui/colormatrix/b5)
- [a5](/documentation/swiftui/colormatrix/a5)

## Applying blur and shadows

- [blur(radius:opaque:)](/documentation/swiftui/view/blur(radius:opaque:))
- [shadow(color:radius:x:y:)](/documentation/swiftui/view/shadow(color:radius:x:y:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
