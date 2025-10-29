---
title: Animatable
description: A type that describes how to animate a property of a view.
source: https://developer.apple.com/documentation/swiftui/animatable
timestamp: 2025-10-29T00:11:32.275Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# Animatable

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A type that describes how to animate a property of a view.

```swift
protocol Animatable
```

## Inherited By

- [AnimatableModifier](/documentation/swiftui/animatablemodifier)
- [GeometryEffect](/documentation/swiftui/geometryeffect)
- [InsettableShape](/documentation/swiftui/insettableshape)
- [Layout](/documentation/swiftui/layout)
- [RoundedRectangularShape](/documentation/swiftui/roundedrectangularshape)
- [Shape](/documentation/swiftui/shape)
- [TextRenderer](/documentation/swiftui/textrenderer)
- [VisualEffect](/documentation/swiftui/visualeffect)

## Conforming Types

- [Angle](/documentation/swiftui/angle)
- [AnyLayout](/documentation/swiftui/anylayout)
- [AnyShape](/documentation/swiftui/anyshape)
- [ButtonBorderShape](/documentation/swiftui/buttonbordershape)
- [Capsule](/documentation/swiftui/capsule)
- [Circle](/documentation/swiftui/circle)
- [Color.Resolved](/documentation/swiftui/color/resolved)
- [Color.ResolvedHDR](/documentation/swiftui/color/resolvedhdr)
- [ConcentricRectangle](/documentation/swiftui/concentricrectangle)
- [ContainerRelativeShape](/documentation/swiftui/containerrelativeshape)
- [DefaultGlassEffectShape](/documentation/swiftui/defaultglasseffectshape)
- [Edge.Corner.Style](/documentation/swiftui/edge/corner/style)
- [EdgeInsets](/documentation/swiftui/edgeinsets)
- [EdgeInsets3D](/documentation/swiftui/edgeinsets3d)
- [Ellipse](/documentation/swiftui/ellipse)
- [EmptyVisualEffect](/documentation/swiftui/emptyvisualeffect)
- [GridLayout](/documentation/swiftui/gridlayout)
- [HStackLayout](/documentation/swiftui/hstacklayout)
- [LayoutRotationUnaryLayout](/documentation/swiftui/layoutrotationunarylayout)
- [ModifiedContent](/documentation/swiftui/modifiedcontent)
- [OffsetShape](/documentation/swiftui/offsetshape)
- [Path](/documentation/swiftui/path)
- [Rectangle](/documentation/swiftui/rectangle)
- [RectangleCornerRadii](/documentation/swiftui/rectanglecornerradii)
- [RotatedShape](/documentation/swiftui/rotatedshape)
- [RoundedRectangle](/documentation/swiftui/roundedrectangle)
- [RoundedRectangularShapeCorners](/documentation/swiftui/roundedrectangularshapecorners)
- [ScaledShape](/documentation/swiftui/scaledshape)
- [SpatialContainer](/documentation/swiftui/spatialcontainer)
- [StrokeStyle](/documentation/swiftui/strokestyle)
- [TransformedShape](/documentation/swiftui/transformedshape)
- [UnevenRoundedRectangle](/documentation/swiftui/unevenroundedrectangle)
- [UnitPoint](/documentation/swiftui/unitpoint)
- [UnitPoint3D](/documentation/swiftui/unitpoint3d)
- [VStackLayout](/documentation/swiftui/vstacklayout)
- [ZStackLayout](/documentation/swiftui/zstacklayout)

## Animating data

- [Animatable()](/documentation/swiftui/animatable()) A member and extension macro that, when applied to a struct, class or enum declaration, synthesizes the conformance to  and its requirement, the  property using the existing animatable properties of the type this macro is applied to.
- [AnimatableIgnored()](/documentation/swiftui/animatableignored()) An accessor macro that marks a property of a type to be excluded from the  synthesis:
- [animatableData](/documentation/swiftui/animatable/animatabledata-6nydg) The data to animate.
- [AnimatableData](/documentation/swiftui/animatable/animatabledata-swift.associatedtype) The type defining the data to animate.

## Making data animatable

- [AnimatableValues](/documentation/swiftui/animatablevalues)
- [AnimatablePair](/documentation/swiftui/animatablepair)
- [VectorArithmetic](/documentation/swiftui/vectorarithmetic)
- [EmptyAnimatableData](/documentation/swiftui/emptyanimatabledata)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
