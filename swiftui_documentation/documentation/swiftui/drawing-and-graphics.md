---
title: Drawing and graphics
description: Enhance your views with graphical effects and customized drawings.
source: https://developer.apple.com/documentation/swiftui/drawing-and-graphics
timestamp: 2025-10-29T00:10:07.558Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Drawing and graphics

> Enhance your views with graphical effects and customized drawings.

## Overview

You create rich, dynamic user interfaces with the built-in views and [Shapes](/documentation/swiftui/shapes) that SwiftUI provides. To enhance any view, you can apply many of the graphical effects typically associated with a graphics context, like setting colors, adding masks, and creating composites.



When you need the flexibility of immediate mode drawing in a graphics context, use a [Canvas](/documentation/swiftui/canvas) view. This can be particularly helpful when you want to draw an extremely large number of dynamic shapes — for example, to create particle effects.

For design guidance, see [materials](/design/Human-Interface-Guidelines/materials) and [color](/design/Human-Interface-Guidelines/color) in the Human Interface Guidelines.

## Immediate mode drawing

- [Add rich graphics to your SwiftUI app](/documentation/swiftui/add-rich-graphics-to-your-swiftui-app) Make your apps stand out by adding background materials, vibrancy, custom graphics, and animations.
- [Canvas](/documentation/swiftui/canvas) A view type that supports immediate mode drawing.
- [GraphicsContext](/documentation/swiftui/graphicscontext) An immediate mode drawing destination, and its current state.

## Setting a color

- [tint(_:)](/documentation/swiftui/view/tint(_:)) Sets the tint color within this view.
- [Color](/documentation/swiftui/color) A representation of a color that adapts to a given context.

## Styling content

- [border(_:width:)](/documentation/swiftui/view/border(_:width:)) Adds a border to this view with the specified style and width.
- [foregroundStyle(_:)](/documentation/swiftui/view/foregroundstyle(_:)) Sets a view’s foreground elements to use a given style.
- [foregroundStyle(_:_:)](/documentation/swiftui/view/foregroundstyle(_:_:)) Sets the primary and secondary levels of the foreground style in the child view.
- [foregroundStyle(_:_:_:)](/documentation/swiftui/view/foregroundstyle(_:_:_:)) Sets the primary, secondary, and tertiary levels of the foreground style.
- [backgroundStyle(_:)](/documentation/swiftui/view/backgroundstyle(_:)) Sets the specified style to render backgrounds within the view.
- [backgroundStyle](/documentation/swiftui/environmentvalues/backgroundstyle) An optional style that overrides the default system background style when set.
- [ShapeStyle](/documentation/swiftui/shapestyle) A color or pattern to use when rendering a shape.
- [AnyShapeStyle](/documentation/swiftui/anyshapestyle) A type-erased ShapeStyle value.
- [Gradient](/documentation/swiftui/gradient) A color gradient represented as an array of color stops, each having a parametric location value.
- [MeshGradient](/documentation/swiftui/meshgradient) A two-dimensional gradient defined by a 2D grid of positioned colors.
- [AnyGradient](/documentation/swiftui/anygradient) A color gradient.
- [ShadowStyle](/documentation/swiftui/shadowstyle) A style to use when rendering shadows.
- [Glass](/documentation/swiftui/glass) A structure that defines the configuration of the Liquid Glass material.

## Transforming colors

- [brightness(_:)](/documentation/swiftui/view/brightness(_:)) Brightens this view by the specified amount.
- [contrast(_:)](/documentation/swiftui/view/contrast(_:)) Sets the contrast and separation between similar colors in this view.
- [colorInvert()](/documentation/swiftui/view/colorinvert()) Inverts the colors in this view.
- [colorMultiply(_:)](/documentation/swiftui/view/colormultiply(_:)) Adds a color multiplication effect to this view.
- [saturation(_:)](/documentation/swiftui/view/saturation(_:)) Adjusts the color saturation of this view.
- [grayscale(_:)](/documentation/swiftui/view/grayscale(_:)) Adds a grayscale effect to this view.
- [hueRotation(_:)](/documentation/swiftui/view/huerotation(_:)) Applies a hue rotation effect to this view.
- [luminanceToAlpha()](/documentation/swiftui/view/luminancetoalpha()) Adds a luminance to alpha effect to this view.
- [materialActiveAppearance(_:)](/documentation/swiftui/view/materialactiveappearance(_:)) Sets an explicit active appearance for materials in this view.
- [materialActiveAppearance](/documentation/swiftui/environmentvalues/materialactiveappearance) The behavior materials should use for their active state, defaulting to .
- [MaterialActiveAppearance](/documentation/swiftui/materialactiveappearance) The behavior for how materials appear active and inactive.

## Scaling, rotating, or transforming a view

- [scaledToFill()](/documentation/swiftui/view/scaledtofill()) Scales this view to fill its parent.
- [scaledToFit()](/documentation/swiftui/view/scaledtofit()) Scales this view to fit its parent.
- [scaleEffect(_:anchor:)](/documentation/swiftui/view/scaleeffect(_:anchor:)) Scales this view’s rendered output by the given amount in both the horizontal and vertical directions, relative to an anchor point.
- [scaleEffect(x:y:anchor:)](/documentation/swiftui/view/scaleeffect(x:y:anchor:)) Scales this view’s rendered output by the given horizontal and vertical amounts, relative to an anchor point.
- [scaleEffect(x:y:z:anchor:)](/documentation/swiftui/view/scaleeffect(x:y:z:anchor:)) Scales this view by the specified horizontal, vertical, and depth factors, relative to an anchor point.
- [aspectRatio(_:contentMode:)](/documentation/swiftui/view/aspectratio(_:contentmode:)) Constrains this view’s dimensions to the specified aspect ratio.
- [rotationEffect(_:anchor:)](/documentation/swiftui/view/rotationeffect(_:anchor:)) Rotates a view’s rendered output in two dimensions around the specified point.
- [rotation3DEffect(_:axis:anchor:anchorZ:perspective:)](/documentation/swiftui/view/rotation3deffect(_:axis:anchor:anchorz:perspective:)) Renders a view’s content as if it’s rotated in three dimensions around the specified axis.
- [perspectiveRotationEffect(_:axis:anchor:anchorZ:perspective:)](/documentation/swiftui/view/perspectiverotationeffect(_:axis:anchor:anchorz:perspective:)) Renders a view’s content as if it’s rotated in three dimensions around the specified axis.
- [rotation3DEffect(_:anchor:)](/documentation/swiftui/view/rotation3deffect(_:anchor:)) Rotates the view’s content by the specified 3D rotation value.
- [rotation3DEffect(_:axis:anchor:)](/documentation/swiftui/view/rotation3deffect(_:axis:anchor:)) Rotates the view’s content by an angle about an axis that you specify as a tuple of elements.
- [transformEffect(_:)](/documentation/swiftui/view/transformeffect(_:)) Applies an affine transformation to this view’s rendered output.
- [transform3DEffect(_:)](/documentation/swiftui/view/transform3deffect(_:)) Applies a 3D transformation to this view’s rendered output.
- [projectionEffect(_:)](/documentation/swiftui/view/projectioneffect(_:)) Applies a projection transformation to this view’s rendered output.
- [ProjectionTransform](/documentation/swiftui/projectiontransform)
- [ContentMode](/documentation/swiftui/contentmode) Constants that define how a view’s content fills the available space.

## Masking and clipping

- [mask(alignment:_:)](/documentation/swiftui/view/mask(alignment:_:)) Masks this view using the alpha channel of the given view.
- [clipped(antialiased:)](/documentation/swiftui/view/clipped(antialiased:)) Clips this view to its bounding rectangular frame.
- [clipShape(_:style:)](/documentation/swiftui/view/clipshape(_:style:)) Sets a clipping shape for this view.

## Applying blur and shadows

- [blur(radius:opaque:)](/documentation/swiftui/view/blur(radius:opaque:)) Applies a Gaussian blur to this view.
- [shadow(color:radius:x:y:)](/documentation/swiftui/view/shadow(color:radius:x:y:)) Adds a shadow to this view.
- [ColorMatrix](/documentation/swiftui/colormatrix) A matrix to use in an RGBA color transformation.

## Applying effects based on geometry

- [visualEffect(_:)](/documentation/swiftui/view/visualeffect(_:)) Applies effects to this view, while providing access to layout information through a geometry proxy.
- [visualEffect3D(_:)](/documentation/swiftui/view/visualeffect3d(_:)) Applies effects to this view, while providing access to layout information through a 3D geometry proxy.
- [VisualEffect](/documentation/swiftui/visualeffect) Visual Effects change the visual appearance of a view without changing its ancestors or descendents.
- [EmptyVisualEffect](/documentation/swiftui/emptyvisualeffect) The base visual effect that you apply additional effect to.

## Compositing views

- [blendMode(_:)](/documentation/swiftui/view/blendmode(_:)) Sets the blend mode for compositing this view with overlapping views.
- [compositingGroup()](/documentation/swiftui/view/compositinggroup()) Wraps this view in a compositing group.
- [drawingGroup(opaque:colorMode:)](/documentation/swiftui/view/drawinggroup(opaque:colormode:)) Composites this view’s contents into an offscreen image before final display.
- [BlendMode](/documentation/swiftui/blendmode) Modes for compositing a view with overlapping content.
- [ColorRenderingMode](/documentation/swiftui/colorrenderingmode) The set of possible working color spaces for color-compositing operations.
- [CompositorContent](/documentation/swiftui/compositorcontent)
- [CompositorContentBuilder](/documentation/swiftui/compositorcontentbuilder) A result builder for composing a collection of  elements.
- [AnyCompositorContent](/documentation/swiftui/anycompositorcontent) Type erased compositor content.

## Measuring a view

- [GeometryReader](/documentation/swiftui/geometryreader) A container view that defines its content as a function of its own size and coordinate space.
- [GeometryReader3D](/documentation/swiftui/geometryreader3d) A container view that defines its content as a function of its own size and coordinate space.
- [GeometryProxy](/documentation/swiftui/geometryproxy) A proxy for access to the size and coordinate space (for anchor resolution) of the container view.
- [GeometryProxy3D](/documentation/swiftui/geometryproxy3d) A proxy for access to the size and coordinate space of the container view.
- [coordinateSpace(_:)](/documentation/swiftui/view/coordinatespace(_:)) Assigns a name to the view’s coordinate space, so other code can operate on dimensions like points and sizes relative to the named space.
- [CoordinateSpace](/documentation/swiftui/coordinatespace) A resolved coordinate space created by the coordinate space protocol.
- [CoordinateSpaceProtocol](/documentation/swiftui/coordinatespaceprotocol) A frame of reference within the layout system.
- [PhysicalMetric](/documentation/swiftui/physicalmetric) Provides access to a value in points that corresponds to the specified physical measurement.
- [PhysicalMetricsConverter](/documentation/swiftui/physicalmetricsconverter) A physical metrics converter provides conversion between point values and their extent in 3D space, in the form of physical length measurements.

## Responding to a geometry change

- [onGeometryChange(for:of:action:)](/documentation/swiftui/view/ongeometrychange(for:of:action:)) Adds an action to be performed when a value, created from a geometry proxy, changes.

## Accessing Metal shaders

- [colorEffect(_:isEnabled:)](/documentation/swiftui/view/coloreffect(_:isenabled:)) Returns a new view that applies  to  as a filter effect on the color of each pixel.
- [distortionEffect(_:maxSampleOffset:isEnabled:)](/documentation/swiftui/view/distortioneffect(_:maxsampleoffset:isenabled:)) Returns a new view that applies  to  as a geometric distortion effect on the location of each pixel.
- [layerEffect(_:maxSampleOffset:isEnabled:)](/documentation/swiftui/view/layereffect(_:maxsampleoffset:isenabled:)) Returns a new view that applies  to  as a filter on the raster layer created from .
- [Shader](/documentation/swiftui/shader) A reference to a function in a Metal shader library, along with its bound uniform argument values.
- [ShaderFunction](/documentation/swiftui/shaderfunction) A reference to a function in a Metal shader library.
- [ShaderLibrary](/documentation/swiftui/shaderlibrary) A Metal shader library.

## Accessing geometric constructs

- [Axis](/documentation/swiftui/axis) The horizontal or vertical dimension in a 2D coordinate system.
- [Angle](/documentation/swiftui/angle) A geometric angle whose value you access in either radians or degrees.
- [UnitPoint](/documentation/swiftui/unitpoint) A normalized 2D point in a view’s coordinate space.
- [UnitPoint3D](/documentation/swiftui/unitpoint3d) A normalized 3D point in a view’s coordinate space.
- [Anchor](/documentation/swiftui/anchor) An opaque value derived from an anchor source and a particular view.
- [DepthAlignmentID](/documentation/swiftui/depthalignmentid)
- [Alignment3D](/documentation/swiftui/alignment3d) An alignment in all three axes.
- [GeometryProxyCoordinateSpace3D](/documentation/swiftui/geometryproxycoordinatespace3d) A representation of a  which can be used for  based conversions.

## Views

- [View fundamentals](/documentation/swiftui/view-fundamentals)
- [View configuration](/documentation/swiftui/view-configuration)
- [View styles](/documentation/swiftui/view-styles)
- [Animations](/documentation/swiftui/animations)
- [Text input and output](/documentation/swiftui/text-input-and-output)
- [Images](/documentation/swiftui/images)
- [Controls and indicators](/documentation/swiftui/controls-and-indicators)
- [Menus and commands](/documentation/swiftui/menus-and-commands)
- [Shapes](/documentation/swiftui/shapes)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
