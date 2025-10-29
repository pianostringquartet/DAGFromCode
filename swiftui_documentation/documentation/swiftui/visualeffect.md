---
title: VisualEffect
description: Visual Effects change the visual appearance of a view without changing its ancestors or descendents.
source: https://developer.apple.com/documentation/swiftui/visualeffect
timestamp: 2025-10-29T00:12:06.548Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# VisualEffect

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Visual Effects change the visual appearance of a view without changing its ancestors or descendents.

```swift
protocol VisualEffect : Sendable, Animatable
```

## Overview

Because effects do not impact layout, they are safe to use in situations where layout modification is not allowed. For example, effects may be applied as a function of position, accessed through a geometry proxy:

```swift
var body: some View {
    ContentRow()
        .visualEffect { content, geometryProxy in
            content.offset(x: geometryProxy.frame(in: .global).origin.y)
        }
}
```

You don’t conform to this protocol yourself. Instead, visual effects are created by calling modifier functions (such as `.offset(x:y:)` on other effects, as seen in the example above.

## Inherits From

- [Animatable](/documentation/swiftui/animatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Conforming Types

- [EmptyVisualEffect](/documentation/swiftui/emptyvisualeffect)
- [ModifiedContent](/documentation/swiftui/modifiedcontent)

## Adjusting Color

- [brightness(_:)](/documentation/swiftui/visualeffect/brightness(_:)) Brightens the view by the specified amount.
- [colorEffect(_:isEnabled:)](/documentation/swiftui/visualeffect/coloreffect(_:isenabled:)) Returns a new visual effect that applies  to  as a filter effect on the color of each pixel.
- [contrast(_:)](/documentation/swiftui/visualeffect/contrast(_:)) Sets the contrast and separation between similar colors in the view.
- [grayscale(_:)](/documentation/swiftui/visualeffect/grayscale(_:)) Adds a grayscale effect to the view.
- [hueRotation(_:)](/documentation/swiftui/visualeffect/huerotation(_:)) Applies a hue rotation effect to the view.
- [saturation(_:)](/documentation/swiftui/visualeffect/saturation(_:)) Adjusts the color saturation of the view.
- [opacity(_:)](/documentation/swiftui/visualeffect/opacity(_:)) Sets the transparency of the view.

## Scaling

- [scaleEffect(_:anchor:)](/documentation/swiftui/visualeffect/scaleeffect(_:anchor:)) Scales this view uniformly by the specified factor, relative to an anchor point.
- [scaleEffect(x:y:anchor:)](/documentation/swiftui/visualeffect/scaleeffect(x:y:anchor:)) Scales the view’s rendered output by the given horizontal and vertical amounts, relative to an anchor point.
- [scaleEffect(x:y:z:anchor:)](/documentation/swiftui/visualeffect/scaleeffect(x:y:z:anchor:)) Scales this view by the specified horizontal, vertical, and depth factors, relative to an anchor point.

## Rotating

- [rotationEffect(_:anchor:)](/documentation/swiftui/visualeffect/rotationeffect(_:anchor:)) Rotates content in two dimensions around the specified point.
- [rotation3DEffect(_:axis:anchor:anchorZ:perspective:)](/documentation/swiftui/visualeffect/rotation3deffect(_:axis:anchor:anchorz:perspective:)) Renders content as if it’s rotated in three dimensions around the specified axis.
- [perspectiveRotationEffect(_:axis:anchor:perspective:)](/documentation/swiftui/visualeffect/perspectiverotationeffect(_:axis:anchor:perspective:)) Renders content as if it’s rotated in three dimensions around the specified axis.
- [rotation3DEffect(_:anchor:)](/documentation/swiftui/visualeffect/rotation3deffect(_:anchor:)) Rotates content by the specified 3D rotation value.
- [rotation3DEffect(_:axis:anchor:)](/documentation/swiftui/visualeffect/rotation3deffect(_:axis:anchor:)) Rotates content by an angle about an axis that you specify as a tuple of elements.

## Translating

- [offset(_:)](/documentation/swiftui/visualeffect/offset(_:)) Offsets the view by the horizontal and vertical amount specified in the offset parameter.
- [offset(x:y:)](/documentation/swiftui/visualeffect/offset(x:y:)) Offsets the view by the specified horizontal and vertical distances.
- [offset(z:)](/documentation/swiftui/visualeffect/offset(z:)) Brings a view forward in Z by the provided distance in points.

## Applying a transform

- [transform3DEffect(_:)](/documentation/swiftui/visualeffect/transform3deffect(_:)) Applies a 3D transformation to this view’s rendered output.
- [transformEffect(_:)](/documentation/swiftui/visualeffect/transformeffect(_:)) Applies an affine transformation to the view’s rendered output.

## Applying other effects

- [blur(radius:opaque:)](/documentation/swiftui/visualeffect/blur(radius:opaque:)) Applies a Gaussian blur to the view.
- [distortionEffect(_:maxSampleOffset:isEnabled:)](/documentation/swiftui/visualeffect/distortioneffect(_:maxsampleoffset:isenabled:)) Returns a new visual effect that applies  to  as a geometric distortion effect on the location of each pixel.
- [layerEffect(_:maxSampleOffset:isEnabled:)](/documentation/swiftui/visualeffect/layereffect(_:maxsampleoffset:isenabled:)) Returns a new visual effect that applies  to  as a filter on the raster layer created from .

## Instance Methods

- [blendMode(_:)](/documentation/swiftui/visualeffect/blendmode(_:)) Sets the blend mode for compositing this view with overlapping views.

## Applying effects based on geometry

- [visualEffect(_:)](/documentation/swiftui/view/visualeffect(_:))
- [visualEffect3D(_:)](/documentation/swiftui/view/visualeffect3d(_:))
- [EmptyVisualEffect](/documentation/swiftui/emptyvisualeffect)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
