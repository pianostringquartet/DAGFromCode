---
title: MeshGradient
description: A two-dimensional gradient defined by a 2D grid of positioned colors.
source: https://developer.apple.com/documentation/swiftui/meshgradient
timestamp: 2025-10-29T00:12:26.405Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# MeshGradient

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> A two-dimensional gradient defined by a 2D grid of positioned colors.

```swift
struct MeshGradient
```

## Overview

Each vertex has a position, a color and four surrounding Bezier control points (leading, top, trailing, bottom) that define the tangents connecting the vertex with its four neighboring vertices. (Vertices on the corners or edges of the mesh have less than four neighbors, they ignore their extra control points.) Control points may either be specified explicitly or implicitly.

When rendering, a tessellated sequence of Bezier patches are created, and vertex colors are interpolated across each patch, either linearly, or via another set of cubic curves derived from how the colors change between neighbors – the latter typically gives smoother color transitions.

```swift
MeshGradient(width: 3, height: 3, points: [
    .init(0, 0), .init(0.5, 0), .init(1, 0),
    .init(0, 0.5), .init(0.5, 0.5), .init(1, 0.5),
    .init(0, 1), .init(0.5, 1), .init(1, 1)
], colors: [
    .red, .purple, .indigo,
    .orange, .white, .blue,
    .yellow, .green, .mint
])
```

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [ShapeStyle](/documentation/swiftui/shapestyle)
- [View](/documentation/swiftui/view)

## Structures

- [MeshGradient.BezierPoint](/documentation/swiftui/meshgradient/bezierpoint) One location in a gradient mesh, along with the four Bezier control points surrounding it.

## Initializers

- [init(width:height:bezierPoints:colors:background:smoothsColors:colorSpace:)](/documentation/swiftui/meshgradient/init(width:height:bezierpoints:colors:background:smoothscolors:colorspace:)) Creates a new gradient mesh specified as a 2D grid of colored points, specifying the Bezier control points explicitly.
- [init(width:height:bezierPoints:resolvedColors:background:smoothsColors:colorSpace:)](/documentation/swiftui/meshgradient/init(width:height:bezierpoints:resolvedcolors:background:smoothscolors:colorspace:)) Creates a new gradient mesh specified as a 2D grid of colored points, specifying the Bezier control points explicitly, with already-resolved sRGB colors.
- [init(width:height:locations:colors:background:smoothsColors:colorSpace:)](/documentation/swiftui/meshgradient/init(width:height:locations:colors:background:smoothscolors:colorspace:)) Creates a new gradient mesh specified as a 2D grid of colored vertices.
- [init(width:height:points:colors:background:smoothsColors:colorSpace:)](/documentation/swiftui/meshgradient/init(width:height:points:colors:background:smoothscolors:colorspace:)) Creates a new gradient mesh specified as a 2D grid of colored points.
- [init(width:height:points:resolvedColors:background:smoothsColors:colorSpace:)](/documentation/swiftui/meshgradient/init(width:height:points:resolvedcolors:background:smoothscolors:colorspace:)) Creates a new gradient mesh specified as a 2D grid of colored points, with already-resolved sRGB colors.

## Instance Properties

- [background](/documentation/swiftui/meshgradient/background) The background color, this fills any points outside the defined vertex mesh.
- [colorSpace](/documentation/swiftui/meshgradient/colorspace) The color space in which to interpolate vertex colors.
- [colors](/documentation/swiftui/meshgradient/colors-swift.property) The array of colors. Must contain  elements.
- [height](/documentation/swiftui/meshgradient/height) The height of the mesh, i.e. the number of vertices per column.
- [locations](/documentation/swiftui/meshgradient/locations-swift.property) The array of locations. Must contain  elements.
- [smoothsColors](/documentation/swiftui/meshgradient/smoothscolors) Whether cubic (smooth) interpolation should be used for the colors in the mesh (rather than only for the shape of the mesh).
- [width](/documentation/swiftui/meshgradient/width) The width of the mesh, i.e. the number of vertices per row.

## Enumerations

- [MeshGradient.Colors](/documentation/swiftui/meshgradient/colors-swift.enum) An array of colors.
- [MeshGradient.Locations](/documentation/swiftui/meshgradient/locations-swift.enum) An array of 2D locations and their control points.

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
- [AnyGradient](/documentation/swiftui/anygradient)
- [ShadowStyle](/documentation/swiftui/shadowstyle)
- [Glass](/documentation/swiftui/glass)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
