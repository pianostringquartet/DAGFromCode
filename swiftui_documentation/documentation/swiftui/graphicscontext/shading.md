---
title: GraphicsContext.Shading
description: A color or pattern that you can use to outline or fill a path.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/shading
timestamp: 2025-10-29T00:13:24.009Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Structure**

# GraphicsContext.Shading

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A color or pattern that you can use to outline or fill a path.

```swift
struct Shading
```

## Overview

Use a shading instance to describe the color or pattern of a path that you outline with a method like [stroke(_:with:style:)](/documentation/swiftui/graphicscontext/stroke(_:with:style:)), or of the interior of a region that you fill with the [fill(_:with:style:)](/documentation/swiftui/graphicscontext/fill(_:with:style:)) method. Get a shading instance by calling one of the `Shading` structure’s factory methods. You can base shading on:

- A [Color](/documentation/swiftui/color).
- A [Gradient](/documentation/swiftui/gradient).
- Any type that conforms to [Shape Style](/documentation/swiftui/shapestyle).
- An [Image](/documentation/swiftui/image).
- What you’ve already drawn into the context.
- A collection of other shading instances.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Colors

- [color(_:)](/documentation/swiftui/graphicscontext/shading/color(_:)) Returns a shading instance that fills with a color.
- [color(_:red:green:blue:opacity:)](/documentation/swiftui/graphicscontext/shading/color(_:red:green:blue:opacity:)) Returns a shading instance that fills with a color in the given color space.
- [color(_:white:opacity:)](/documentation/swiftui/graphicscontext/shading/color(_:white:opacity:)) Returns a shading instance that fills with a monochrome color in the given color space.

## Gradients

- [linearGradient(_:startPoint:endPoint:options:)](/documentation/swiftui/graphicscontext/shading/lineargradient(_:startpoint:endpoint:options:)) Returns a shading instance that fills a linear (axial) gradient.
- [radialGradient(_:center:startRadius:endRadius:options:)](/documentation/swiftui/graphicscontext/shading/radialgradient(_:center:startradius:endradius:options:)) Returns a shading instance that fills a radial gradient.
- [conicGradient(_:center:angle:options:)](/documentation/swiftui/graphicscontext/shading/conicgradient(_:center:angle:options:)) Returns a shading instance that fills a conic (angular) gradient.

## Other shape styles

- [style(_:)](/documentation/swiftui/graphicscontext/shading/style(_:)) Returns a shading instance that fills with the given shape style.
- [foreground](/documentation/swiftui/graphicscontext/shading/foreground) A shading instance that fills with the foreground style from the graphics context’s environment.

## Images

- [tiledImage(_:origin:sourceRect:scale:)](/documentation/swiftui/graphicscontext/shading/tiledimage(_:origin:sourcerect:scale:)) Returns a shading instance that tiles an image across the infinite plane.

## Composite shading types

- [palette(_:)](/documentation/swiftui/graphicscontext/shading/palette(_:)) Returns a multilevel shading instance constructed from an array of shading instances.
- [backdrop](/documentation/swiftui/graphicscontext/shading/backdrop) A shading instance that draws a copy of the current background.

## Using a custom Metal shader

- [shader(_:bounds:)](/documentation/swiftui/graphicscontext/shading/shader(_:bounds:)) Returns a shading instance that fills with the results of querying a shader for each pixel.

## Type Methods

- [meshGradient(_:)](/documentation/swiftui/graphicscontext/shading/meshgradient(_:)) Returns a shading instance that fills with a mesh gradient.

## Drawing a path

- [stroke(_:with:lineWidth:)](/documentation/swiftui/graphicscontext/stroke(_:with:linewidth:))
- [stroke(_:with:style:)](/documentation/swiftui/graphicscontext/stroke(_:with:style:))
- [fill(_:with:style:)](/documentation/swiftui/graphicscontext/fill(_:with:style:))
- [GraphicsContext.GradientOptions](/documentation/swiftui/graphicscontext/gradientoptions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
