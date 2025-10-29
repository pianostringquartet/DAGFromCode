---
title: ProjectionTransform
source: https://developer.apple.com/documentation/swiftui/projectiontransform
timestamp: 2025-10-29T00:12:55.069Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ProjectionTransform

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

```swift
@frozen struct ProjectionTransform
```

## Conforms To

- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Creating a transform

- [init()](/documentation/swiftui/projectiontransform/init())
- [init(_:)](/documentation/swiftui/projectiontransform/init(_:))

## Getting transform characteristics

- [isAffine](/documentation/swiftui/projectiontransform/isaffine)
- [isIdentity](/documentation/swiftui/projectiontransform/isidentity)

## Manipulating transforms

- [invert()](/documentation/swiftui/projectiontransform/invert())
- [inverted()](/documentation/swiftui/projectiontransform/inverted())
- [concatenating(_:)](/documentation/swiftui/projectiontransform/concatenating(_:))

## Accessing the transform’s coefficients

- [m11](/documentation/swiftui/projectiontransform/m11)
- [m12](/documentation/swiftui/projectiontransform/m12)
- [m13](/documentation/swiftui/projectiontransform/m13)
- [m21](/documentation/swiftui/projectiontransform/m21)
- [m22](/documentation/swiftui/projectiontransform/m22)
- [m23](/documentation/swiftui/projectiontransform/m23)
- [m31](/documentation/swiftui/projectiontransform/m31)
- [m32](/documentation/swiftui/projectiontransform/m32)
- [m33](/documentation/swiftui/projectiontransform/m33)

## Scaling, rotating, or transforming a view

- [scaledToFill()](/documentation/swiftui/view/scaledtofill())
- [scaledToFit()](/documentation/swiftui/view/scaledtofit())
- [scaleEffect(_:anchor:)](/documentation/swiftui/view/scaleeffect(_:anchor:))
- [scaleEffect(x:y:anchor:)](/documentation/swiftui/view/scaleeffect(x:y:anchor:))
- [scaleEffect(x:y:z:anchor:)](/documentation/swiftui/view/scaleeffect(x:y:z:anchor:))
- [aspectRatio(_:contentMode:)](/documentation/swiftui/view/aspectratio(_:contentmode:))
- [rotationEffect(_:anchor:)](/documentation/swiftui/view/rotationeffect(_:anchor:))
- [rotation3DEffect(_:axis:anchor:anchorZ:perspective:)](/documentation/swiftui/view/rotation3deffect(_:axis:anchor:anchorz:perspective:))
- [perspectiveRotationEffect(_:axis:anchor:anchorZ:perspective:)](/documentation/swiftui/view/perspectiverotationeffect(_:axis:anchor:anchorz:perspective:))
- [rotation3DEffect(_:anchor:)](/documentation/swiftui/view/rotation3deffect(_:anchor:))
- [rotation3DEffect(_:axis:anchor:)](/documentation/swiftui/view/rotation3deffect(_:axis:anchor:))
- [transformEffect(_:)](/documentation/swiftui/view/transformeffect(_:))
- [transform3DEffect(_:)](/documentation/swiftui/view/transform3deffect(_:))
- [projectionEffect(_:)](/documentation/swiftui/view/projectioneffect(_:))
- [ContentMode](/documentation/swiftui/contentmode)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
