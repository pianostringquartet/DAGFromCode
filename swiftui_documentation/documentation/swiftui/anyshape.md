---
title: AnyShape
description: A type-erased shape value.
source: https://developer.apple.com/documentation/swiftui/anyshape
timestamp: 2025-10-29T00:10:56.606Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# AnyShape

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A type-erased shape value.

```swift
@frozen struct AnyShape
```

## Overview

You can use this type to dynamically switch between shape types:

```swift
struct MyClippedView: View {
    var isCircular: Bool

    var body: some View {
        OtherView().clipShape(isCircular ?
            AnyShape(Circle()) : AnyShape(Capsule()))
    }
}
```

## Conforms To

- [Animatable](/documentation/swiftui/animatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [Shape](/documentation/swiftui/shape)
- [View](/documentation/swiftui/view)

## Creating a shape

- [init(_:)](/documentation/swiftui/anyshape/init(_:)) Create an any shape instance from a shape.

## Defining shape behavior

- [ShapeView](/documentation/swiftui/shapeview)
- [Shape](/documentation/swiftui/shape)
- [ShapeRole](/documentation/swiftui/shaperole)
- [StrokeStyle](/documentation/swiftui/strokestyle)
- [StrokeShapeView](/documentation/swiftui/strokeshapeview)
- [StrokeBorderShapeView](/documentation/swiftui/strokebordershapeview)
- [FillStyle](/documentation/swiftui/fillstyle)
- [FillShapeView](/documentation/swiftui/fillshapeview)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
