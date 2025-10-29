---
title: Graphics and rendering modifiers
description: Affect the way the system draws a view, for example by scaling or masking a view, or by applying graphical effects.
source: https://developer.apple.com/documentation/swiftui/view-graphics-and-rendering
timestamp: 2025-10-29T00:09:29.393Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Graphics and rendering modifiers

> Affect the way the system draws a view, for example by scaling or masking a view, or by applying graphical effects.

## Overview

Use these view modifiers to apply many of the rendering effects typically associated with a graphics context, like adding masks and creating composites. You can apply these effects to graphical views, like [Shapes](/documentation/swiftui/shapes), as well as any other SwiftUI view.

When you do need the flexibility of immediate mode drawing in a graphics context, use a [Canvas](/documentation/swiftui/canvas) view instead. This can be particularly helpful when you want to draw an extremely large number of dynamic shapes — for example, to create particle effects.

For more information about using these effects in your app, see [Drawing-and](/documentation/swiftui/drawing-and-graphics).

## Masks and clipping

- [mask(alignment:_:)](/documentation/swiftui/view/mask(alignment:_:)) Masks this view using the alpha channel of the given view.
- [clipped(antialiased:)](/documentation/swiftui/view/clipped(antialiased:)) Clips this view to its bounding rectangular frame.
- [clipShape(_:style:)](/documentation/swiftui/view/clipshape(_:style:)) Sets a clipping shape for this view.
- [containerShape(_:)](/documentation/swiftui/view/containershape(_:)) Sets the container shape to use for any container relative shape or concentric rectangle within this view.

## Scale

- [scaledToFill()](/documentation/swiftui/view/scaledtofill()) Scales this view to fill its parent.
- [scaledToFit()](/documentation/swiftui/view/scaledtofit()) Scales this view to fit its parent.
- [scaleEffect(_:anchor:)](/documentation/swiftui/view/scaleeffect(_:anchor:)) Scales this view’s rendered output by the given amount in both the horizontal and vertical directions, relative to an anchor point.
- [scaleEffect(x:y:anchor:)](/documentation/swiftui/view/scaleeffect(x:y:anchor:)) Scales this view’s rendered output by the given horizontal and vertical amounts, relative to an anchor point.
- [scaleEffect(x:y:z:anchor:)](/documentation/swiftui/view/scaleeffect(x:y:z:anchor:)) Scales this view by the specified horizontal, vertical, and depth factors, relative to an anchor point.
- [imageScale(_:)](/documentation/swiftui/view/imagescale(_:)) Scales images within the view according to one of the relative sizes available including small, medium, and large images sizes.
- [aspectRatio(_:contentMode:)](/documentation/swiftui/view/aspectratio(_:contentmode:)) Constrains this view’s dimensions to the specified aspect ratio.

## Rotation and transformation

- [rotationEffect(_:anchor:)](/documentation/swiftui/view/rotationeffect(_:anchor:)) Rotates a view’s rendered output in two dimensions around the specified point.
- [rotation3DEffect(_:anchor:)](/documentation/swiftui/view/rotation3deffect(_:anchor:)) Rotates the view’s content by the specified 3D rotation value.
- [rotation3DEffect(_:axis:anchor:anchorZ:perspective:)](/documentation/swiftui/view/rotation3deffect(_:axis:anchor:anchorz:perspective:)) Renders a view’s content as if it’s rotated in three dimensions around the specified axis.
- [rotation3DEffect(_:axis:anchor:)](/documentation/swiftui/view/rotation3deffect(_:axis:anchor:)) Rotates the view’s content by an angle about an axis that you specify as a tuple of elements.
- [perspectiveRotationEffect(_:axis:anchor:anchorZ:perspective:)](/documentation/swiftui/view/perspectiverotationeffect(_:axis:anchor:anchorz:perspective:)) Renders a view’s content as if it’s rotated in three dimensions around the specified axis.
- [projectionEffect(_:)](/documentation/swiftui/view/projectioneffect(_:)) Applies a projection transformation to this view’s rendered output.
- [transformEffect(_:)](/documentation/swiftui/view/transformeffect(_:)) Applies an affine transformation to this view’s rendered output.
- [transform3DEffect(_:)](/documentation/swiftui/view/transform3deffect(_:)) Applies a 3D transformation to this view’s rendered output.

## Graphical effects

- [blur(radius:opaque:)](/documentation/swiftui/view/blur(radius:opaque:)) Applies a Gaussian blur to this view.
- [opacity(_:)](/documentation/swiftui/view/opacity(_:)) Sets the transparency of this view.
- [brightness(_:)](/documentation/swiftui/view/brightness(_:)) Brightens this view by the specified amount.
- [contrast(_:)](/documentation/swiftui/view/contrast(_:)) Sets the contrast and separation between similar colors in this view.
- [colorInvert()](/documentation/swiftui/view/colorinvert()) Inverts the colors in this view.
- [colorMultiply(_:)](/documentation/swiftui/view/colormultiply(_:)) Adds a color multiplication effect to this view.
- [saturation(_:)](/documentation/swiftui/view/saturation(_:)) Adjusts the color saturation of this view.
- [grayscale(_:)](/documentation/swiftui/view/grayscale(_:)) Adds a grayscale effect to this view.
- [hueRotation(_:)](/documentation/swiftui/view/huerotation(_:)) Applies a hue rotation effect to this view.
- [luminanceToAlpha()](/documentation/swiftui/view/luminancetoalpha()) Adds a luminance to alpha effect to this view.
- [shadow(color:radius:x:y:)](/documentation/swiftui/view/shadow(color:radius:x:y:)) Adds a shadow to this view.
- [visualEffect(_:)](/documentation/swiftui/view/visualeffect(_:)) Applies effects to this view, while providing access to layout information through a geometry proxy.
- [visualEffect3D(_:)](/documentation/swiftui/view/visualeffect3d(_:)) Applies effects to this view, while providing access to layout information through a 3D geometry proxy.

## Shaders

- [colorEffect(_:isEnabled:)](/documentation/swiftui/view/coloreffect(_:isenabled:)) Returns a new view that applies  to  as a filter effect on the color of each pixel.
- [distortionEffect(_:maxSampleOffset:isEnabled:)](/documentation/swiftui/view/distortioneffect(_:maxsampleoffset:isenabled:)) Returns a new view that applies  to  as a geometric distortion effect on the location of each pixel.
- [layerEffect(_:maxSampleOffset:isEnabled:)](/documentation/swiftui/view/layereffect(_:maxsampleoffset:isenabled:)) Returns a new view that applies  to  as a filter on the raster layer created from .

## Composites

- [blendMode(_:)](/documentation/swiftui/view/blendmode(_:)) Sets the blend mode for compositing this view with overlapping views.
- [compositingGroup()](/documentation/swiftui/view/compositinggroup()) Wraps this view in a compositing group.
- [drawingGroup(opaque:colorMode:)](/documentation/swiftui/view/drawinggroup(opaque:colormode:)) Composites this view’s contents into an offscreen image before final display.

## Animations

- [animation(_:)](/documentation/swiftui/view/animation(_:)) Applies the given animation to this view when this view changes.
- [animation(_:value:)](/documentation/swiftui/view/animation(_:value:)) Applies the given animation to this view when the specified value changes.
- [animation(_:body:)](/documentation/swiftui/view/animation(_:body:)) Applies the given animation to all animatable values within the  closure.
- [keyframeAnimator(initialValue:repeating:content:keyframes:)](/documentation/swiftui/view/keyframeanimator(initialvalue:repeating:content:keyframes:)) Loops the given keyframes continuously, updating the view using the modifiers you apply in .
- [keyframeAnimator(initialValue:trigger:content:keyframes:)](/documentation/swiftui/view/keyframeanimator(initialvalue:trigger:content:keyframes:)) Plays the given keyframes when the given trigger value changes, updating the view using the modifiers you apply in .
- [phaseAnimator(_:content:animation:)](/documentation/swiftui/view/phaseanimator(_:content:animation:)) Animates effects that you apply to a view over a sequence of phases that change continuously.
- [phaseAnimator(_:trigger:content:animation:)](/documentation/swiftui/view/phaseanimator(_:trigger:content:animation:)) Animates effects that you apply to a view over a sequence of phases that change based on a trigger.
- [contentTransition(_:)](/documentation/swiftui/view/contenttransition(_:)) Modifies the view to use a given transition as its method of animating changes to the contents of its views.
- [transition(_:)](/documentation/swiftui/view/transition(_:)) Associates a transition with the view.
- [transaction(_:)](/documentation/swiftui/view/transaction(_:)) Applies the given transaction mutation function to all animations used within the view.
- [transaction(value:_:)](/documentation/swiftui/view/transaction(value:_:)) Applies the given transaction mutation function to all animations used within the view.
- [transaction(_:body:)](/documentation/swiftui/view/transaction(_:body:)) Applies the given transaction mutation function to all animations used within the  closure.
- [contentTransition(_:)](/documentation/swiftui/view/contenttransition(_:)) Modifies the view to use a given transition as its method of animating changes to the contents of its views.
- [matchedGeometryEffect(id:in:properties:anchor:isSource:)](/documentation/swiftui/view/matchedgeometryeffect(id:in:properties:anchor:issource:)) Defines a group of views with synchronized geometry using an identifier and namespace that you provide.
- [geometryGroup()](/documentation/swiftui/view/geometrygroup()) Isolates the geometry (e.g. position and size) of the view from its parent view.

## Drawing views

- [Style modifiers](/documentation/swiftui/view-style-modifiers)
- [Layout modifiers](/documentation/swiftui/view-layout)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
