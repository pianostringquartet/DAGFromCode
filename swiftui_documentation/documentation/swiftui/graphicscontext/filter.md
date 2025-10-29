---
title: GraphicsContext.Filter
description: A type that applies image processing operations to rendered content.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/filter
timestamp: 2025-10-29T00:11:59.507Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Structure**

# GraphicsContext.Filter

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A type that applies image processing operations to rendered content.

```swift
struct Filter
```

## Overview

Create and configure a filter that produces an image processing effect, like adding a drop shadow or a blur effect, by calling one of the factory methods defined by the `Filter` structure. Call the [addFilter(_:options:)](/documentation/swiftui/graphicscontext/addfilter(_:options:)) method to add the filter to a [Graphics Context](/documentation/swiftui/graphicscontext). The filter only affects content that you draw into the context after adding the filter.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Changing brightness and contrast

- [brightness(_:)](/documentation/swiftui/graphicscontext/filter/brightness(_:)) Returns a filter that applies a brightness adjustment.
- [contrast(_:)](/documentation/swiftui/graphicscontext/filter/contrast(_:)) Returns a filter that applies a contrast adjustment.

## Manipulating color

- [saturation(_:)](/documentation/swiftui/graphicscontext/filter/saturation(_:)) Returns a filter that applies a saturation adjustment.
- [colorInvert(_:)](/documentation/swiftui/graphicscontext/filter/colorinvert(_:)) Returns a filter that inverts the color of their results.
- [colorMultiply(_:)](/documentation/swiftui/graphicscontext/filter/colormultiply(_:)) Returns a filter that multiplies each color component by the matching component of a given color.
- [hueRotation(_:)](/documentation/swiftui/graphicscontext/filter/huerotation(_:)) Returns a filter that applies a hue rotation adjustment.
- [grayscale(_:)](/documentation/swiftui/graphicscontext/filter/grayscale(_:)) Returns a filter that applies a grayscale adjustment.
- [colorMatrix(_:)](/documentation/swiftui/graphicscontext/filter/colormatrix(_:)) Returns a filter that multiplies by a given color matrix.

## Adding blur

- [blur(radius:options:)](/documentation/swiftui/graphicscontext/filter/blur(radius:options:)) Returns a filter that applies a Gaussian blur.

## Adding a shadow

- [shadow(color:radius:x:y:blendMode:options:)](/documentation/swiftui/graphicscontext/filter/shadow(color:radius:x:y:blendmode:options:)) Returns a filter that adds a shadow.

## Adjusting opacity

- [luminanceToAlpha](/documentation/swiftui/graphicscontext/filter/luminancetoalpha) Returns a filter that sets the opacity of each pixel based on its luminance.
- [alphaThreshold(min:max:color:)](/documentation/swiftui/graphicscontext/filter/alphathreshold(min:max:color:)) Returns a filter that replaces each pixel with alpha components within a range by a constant color, or transparency otherwise.

## Adding a transformation

- [projectionTransform(_:)](/documentation/swiftui/graphicscontext/filter/projectiontransform(_:)) Returns a filter that transforms the rasterized form of subsequent graphics primitives.

## Using a custom Metal shader

- [colorShader(_:)](/documentation/swiftui/graphicscontext/filter/colorshader(_:)) Returns a filter that applies  to the color of each source pixel.
- [distortionShader(_:maxSampleOffset:)](/documentation/swiftui/graphicscontext/filter/distortionshader(_:maxsampleoffset:)) Returns a filter that applies  as a geometric distortion effect on the location of each pixel.
- [layerShader(_:maxSampleOffset:)](/documentation/swiftui/graphicscontext/filter/layershader(_:maxsampleoffset:)) Returns a filter that applies  to the contents of the source layer.

## Filtering

- [addFilter(_:options:)](/documentation/swiftui/graphicscontext/addfilter(_:options:))
- [GraphicsContext.FilterOptions](/documentation/swiftui/graphicscontext/filteroptions)
- [GraphicsContext.BlurOptions](/documentation/swiftui/graphicscontext/bluroptions)
- [GraphicsContext.ShadowOptions](/documentation/swiftui/graphicscontext/shadowoptions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
