---
title: ShapeStyle
description: A color or pattern to use when rendering a shape.
source: https://developer.apple.com/documentation/swiftui/shapestyle
timestamp: 2025-10-29T00:12:52.799Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# ShapeStyle

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A color or pattern to use when rendering a shape.

```swift
protocol ShapeStyle : Sendable
```

## Overview

You create custom shape styles by declaring a type that conforms to the `ShapeStyle` protocol and implementing the required `resolve` function to return a shape style that represents the desired appearance based on the current environment.

For example this shape style reads the current color scheme from the environment to choose the blend mode its color will be composited with:

```swift
struct MyShapeStyle: ShapeStyle {
    func resolve(in environment: EnvironmentValues) -> some ShapeStyle {
        if environment.colorScheme == .light {
            return Color.red.blendMode(.lighten)
        } else {
            return Color.red.blendMode(.darken)
        }
    }
}
```

In addition to creating a custom shape style, you can also use one of the concrete styles that SwiftUI defines. To indicate a specific color or pattern, you can use [Color](/documentation/swiftui/color) or the style returned by [image(_:sourceRect:scale:)](/documentation/swiftui/shapestyle/image(_:sourcerect:scale:)), or one of the gradient types, like the one returned by [radialGradient(_:center:startRadius:endRadius:)](/documentation/swiftui/shapestyle/radialgradient(_:center:startradius:endradius:)). To set a color that’s appropriate for a given context on a given platform, use one of the semantic styles, like [background](/documentation/swiftui/shapestyle/background) or [primary](/documentation/swiftui/shapestyle/primary).

You can use a shape style by:

- Filling a shape with a style with the [fill(_:style:)](/documentation/swiftui/shape/fill(_:style:)) modifier:

```swift
Path { path in
    path.move(to: .zero)
    path.addLine(to: CGPoint(x: 50, y: 0))
    path.addArc(
        center: .zero,
        radius: 50,
        startAngle: .zero,
        endAngle: .degrees(90),
        clockwise: false)
}
.fill(.radialGradient(
    Gradient(colors: [.yellow, .red]),
    center: .topLeading,
    startRadius: 15,
    endRadius: 80))
```


- Tracing the outline of a shape with a style with either the [stroke(_:lineWidth:)](/documentation/swiftui/shape/stroke(_:linewidth:)) or the [stroke(_:style:)](/documentation/swiftui/shape/stroke(_:style:)) modifier:

```swift
RoundedRectangle(cornerRadius: 10)
    .stroke(.mint, lineWidth: 10)
    .frame(width: 200, height: 50)
```


- Styling the foreground elements in a view with the [foregroundStyle(_:)](/documentation/swiftui/view/foregroundstyle(_:)) modifier:

```swift
VStack(alignment: .leading) {
    Text("Primary")
        .font(.title)
    Text("Secondary")
        .font(.caption)
        .foregroundStyle(.secondary)
}
```



## Inherits From

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Conforming Types

- [AngularGradient](/documentation/swiftui/angulargradient)
- [AnyGradient](/documentation/swiftui/anygradient)
- [AnyShapeStyle](/documentation/swiftui/anyshapestyle)
- [BackgroundStyle](/documentation/swiftui/backgroundstyle)
- [Color](/documentation/swiftui/color)
- [Color.Resolved](/documentation/swiftui/color/resolved)
- [Color.ResolvedHDR](/documentation/swiftui/color/resolvedhdr)
- [EllipticalGradient](/documentation/swiftui/ellipticalgradient)
- [FillShapeStyle](/documentation/swiftui/fillshapestyle)
- [ForegroundStyle](/documentation/swiftui/foregroundstyle)
- [Gradient](/documentation/swiftui/gradient)
- [HierarchicalShapeStyle](/documentation/swiftui/hierarchicalshapestyle)
- [HierarchicalShapeStyleModifier](/documentation/swiftui/hierarchicalshapestylemodifier)
- [ImagePaint](/documentation/swiftui/imagepaint)
- [LinearGradient](/documentation/swiftui/lineargradient)
- [LinkShapeStyle](/documentation/swiftui/linkshapestyle)
- [Material](/documentation/swiftui/material)
- [MeshGradient](/documentation/swiftui/meshgradient)
- [PlaceholderTextShapeStyle](/documentation/swiftui/placeholdertextshapestyle)
- [RadialGradient](/documentation/swiftui/radialgradient)
- [SelectionShapeStyle](/documentation/swiftui/selectionshapestyle)
- [SeparatorShapeStyle](/documentation/swiftui/separatorshapestyle)
- [Shader](/documentation/swiftui/shader)
- [TintShapeStyle](/documentation/swiftui/tintshapestyle)
- [WindowBackgroundShapeStyle](/documentation/swiftui/windowbackgroundshapestyle)

## System colors

- [black](/documentation/swiftui/shapestyle/black) A black color suitable for use in UI elements.
- [blue](/documentation/swiftui/shapestyle/blue) A context-dependent blue color suitable for use in UI elements.
- [brown](/documentation/swiftui/shapestyle/brown) A context-dependent brown color suitable for use in UI elements.
- [clear](/documentation/swiftui/shapestyle/clear) A clear color suitable for use in UI elements.
- [cyan](/documentation/swiftui/shapestyle/cyan) A context-dependent cyan color suitable for use in UI elements.
- [gray](/documentation/swiftui/shapestyle/gray) A context-dependent gray color suitable for use in UI elements.
- [green](/documentation/swiftui/shapestyle/green) A context-dependent green color suitable for use in UI elements.
- [indigo](/documentation/swiftui/shapestyle/indigo) A context-dependent indigo color suitable for use in UI elements.
- [mint](/documentation/swiftui/shapestyle/mint) A context-dependent mint color suitable for use in UI elements.
- [orange](/documentation/swiftui/shapestyle/orange) A context-dependent orange color suitable for use in UI elements.
- [pink](/documentation/swiftui/shapestyle/pink) A context-dependent pink color suitable for use in UI elements.
- [purple](/documentation/swiftui/shapestyle/purple) A context-dependent purple color suitable for use in UI elements.
- [red](/documentation/swiftui/shapestyle/red) A context-dependent red color suitable for use in UI elements.
- [teal](/documentation/swiftui/shapestyle/teal) A context-dependent teal color suitable for use in UI elements.
- [white](/documentation/swiftui/shapestyle/white) A white color suitable for use in UI elements.
- [yellow](/documentation/swiftui/shapestyle/yellow) A context-dependent yellow color suitable for use in UI elements.

## Angular gradients

- [angularGradient(_:center:startAngle:endAngle:)](/documentation/swiftui/shapestyle/angulargradient(_:center:startangle:endangle:)) An angular gradient, which applies the color function as the angle changes between the start and end angles, and anchored to a relative center point within the filled shape.
- [angularGradient(colors:center:startAngle:endAngle:)](/documentation/swiftui/shapestyle/angulargradient(colors:center:startangle:endangle:)) An angular gradient defined by a collection of colors.
- [angularGradient(stops:center:startAngle:endAngle:)](/documentation/swiftui/shapestyle/angulargradient(stops:center:startangle:endangle:)) An angular gradient defined by a collection of color stops.

## Conic gradients

- [conicGradient(_:center:angle:)](/documentation/swiftui/shapestyle/conicgradient(_:center:angle:)) A conic gradient that completes a full turn, optionally starting from a given angle and anchored to a relative center point within the filled shape.
- [conicGradient(colors:center:angle:)](/documentation/swiftui/shapestyle/conicgradient(colors:center:angle:)) A conic gradient defined by a collection of colors that completes a full turn.
- [conicGradient(stops:center:angle:)](/documentation/swiftui/shapestyle/conicgradient(stops:center:angle:)) A conic gradient defined by a collection of color stops that completes a full turn.

## Elliptical gradients

- [ellipticalGradient(_:center:startRadiusFraction:endRadiusFraction:)](/documentation/swiftui/shapestyle/ellipticalgradient(_:center:startradiusfraction:endradiusfraction:)) A radial gradient that draws an ellipse.
- [ellipticalGradient(colors:center:startRadiusFraction:endRadiusFraction:)](/documentation/swiftui/shapestyle/ellipticalgradient(colors:center:startradiusfraction:endradiusfraction:)) A radial gradient that draws an ellipse defined by a collection of colors.
- [ellipticalGradient(stops:center:startRadiusFraction:endRadiusFraction:)](/documentation/swiftui/shapestyle/ellipticalgradient(stops:center:startradiusfraction:endradiusfraction:)) A radial gradient that draws an ellipse defined by a collection of color stops.

## Linear gradients

- [linearGradient(_:startPoint:endPoint:)](/documentation/swiftui/shapestyle/lineargradient(_:startpoint:endpoint:)) A linear gradient.
- [linearGradient(colors:startPoint:endPoint:)](/documentation/swiftui/shapestyle/lineargradient(colors:startpoint:endpoint:)) A linear gradient defined by a collection of colors.
- [linearGradient(stops:startPoint:endPoint:)](/documentation/swiftui/shapestyle/lineargradient(stops:startpoint:endpoint:)) A linear gradient defined by a collection of color stops.

## Radial gradients

- [radialGradient(_:center:startRadius:endRadius:)](/documentation/swiftui/shapestyle/radialgradient(_:center:startradius:endradius:)) A radial gradient.
- [radialGradient(colors:center:startRadius:endRadius:)](/documentation/swiftui/shapestyle/radialgradient(colors:center:startradius:endradius:)) A radial gradient defined by a collection of colors.
- [radialGradient(stops:center:startRadius:endRadius:)](/documentation/swiftui/shapestyle/radialgradient(stops:center:startradius:endradius:)) A radial gradient defined by a collection of color stops.

## Materials

- [ultraThinMaterial](/documentation/swiftui/shapestyle/ultrathinmaterial) A mostly translucent material.
- [thinMaterial](/documentation/swiftui/shapestyle/thinmaterial) A material that’s more translucent than opaque.
- [regularMaterial](/documentation/swiftui/shapestyle/regularmaterial) A material that’s somewhat translucent.
- [thickMaterial](/documentation/swiftui/shapestyle/thickmaterial) A material that’s more opaque than translucent.
- [ultraThickMaterial](/documentation/swiftui/shapestyle/ultrathickmaterial) A mostly opaque material.
- [bar](/documentation/swiftui/shapestyle/bar) A material matching the style of system toolbars.

## Image paint styles

- [image(_:sourceRect:scale:)](/documentation/swiftui/shapestyle/image(_:sourcerect:scale:)) A shape style that fills a shape by repeating a region of an image.

## Hierarchical styles

- [secondary](/documentation/swiftui/shapestyle/secondary-swift.property) Returns the second level of this shape style.
- [tertiary](/documentation/swiftui/shapestyle/tertiary-swift.property) Returns the third level of this shape style.
- [quaternary](/documentation/swiftui/shapestyle/quaternary-swift.property) Returns the fourth level of this shape style.
- [quinary](/documentation/swiftui/shapestyle/quinary-swift.property) Returns the fifth level of this shape style.
- [primary](/documentation/swiftui/shapestyle/primary) A shape style that maps to the first level of the current content style.
- [secondary](/documentation/swiftui/shapestyle/secondary-swift.type.property) A shape style that maps to the second level of the current content style.
- [tertiary](/documentation/swiftui/shapestyle/tertiary-swift.type.property) A shape style that maps to the third level of the current content style.
- [quaternary](/documentation/swiftui/shapestyle/quaternary-swift.type.property) A shape style that maps to the fourth level of the current content style.
- [quinary](/documentation/swiftui/shapestyle/quinary-swift.type.property) A shape style that maps to the fifth level of the current content style.

## Semantic styles

- [foreground](/documentation/swiftui/shapestyle/foreground) The foreground style in the current context.
- [background](/documentation/swiftui/shapestyle/background) The background style in the current context.
- [selection](/documentation/swiftui/shapestyle/selection) A style used to visually indicate selection following platform conventional colors and behaviors.
- [separator](/documentation/swiftui/shapestyle/separator) A style appropriate for foreground separator or border lines.
- [tint](/documentation/swiftui/shapestyle/tint) A style that reflects the current tint color.
- [placeholder](/documentation/swiftui/shapestyle/placeholder) A style appropriate for placeholder text.
- [link](/documentation/swiftui/shapestyle/link) A style appropriate for links.
- [fill](/documentation/swiftui/shapestyle/fill) An overlay fill style for filling shapes.
- [windowBackground](/documentation/swiftui/shapestyle/windowbackground) A style appropriate for elements that should match the background of their containing window.

## Modifying a shape style

- [blendMode(_:)](/documentation/swiftui/shapestyle/blendmode(_:)-swift.method) Returns a new style based on  that applies the specified blend mode when drawing.
- [opacity(_:)](/documentation/swiftui/shapestyle/opacity(_:)-swift.method) Returns a new style based on  that multiplies by the specified opacity when drawing.
- [shadow(_:)](/documentation/swiftui/shapestyle/shadow(_:)-swift.method) Applies the specified shadow effect to the shape style.

## Configuring the default shape style

- [blendMode(_:)](/documentation/swiftui/shapestyle/blendmode(_:)-swift.type.method) Returns a new style based on the current style that uses  as its blend mode when drawing.
- [opacity(_:)](/documentation/swiftui/shapestyle/opacity(_:)-swift.type.method) Returns a new style based on the current style that multiplies by  when drawing.
- [shadow(_:)](/documentation/swiftui/shapestyle/shadow(_:)-swift.type.method) Returns a shape style that applies the specified shadow style to the current style.

## Mapping to absolute coordinates

- [in(_:)](/documentation/swiftui/shapestyle/in(_:)) Maps a shape style’s unit-space coordinates to the absolute coordinates of a given rectangle.

## Resolving a shape style in an environment

- [resolve(in:)](/documentation/swiftui/shapestyle/resolve(in:)) Evaluate to a resolved shape style given the current .
- [Resolved](/documentation/swiftui/shapestyle/resolved) The type of shape style this will resolve to.

## Using a shape style as a view

- [body](/documentation/swiftui/shapestyle/body) A rectangular view that’s filled with the shape style.

## Supporting types

- [AngularGradient](/documentation/swiftui/angulargradient) An angular gradient.
- [EllipticalGradient](/documentation/swiftui/ellipticalgradient) A radial gradient that draws an ellipse.
- [LinearGradient](/documentation/swiftui/lineargradient) A linear gradient.
- [RadialGradient](/documentation/swiftui/radialgradient) A radial gradient.
- [Material](/documentation/swiftui/material) A background material type.
- [ImagePaint](/documentation/swiftui/imagepaint) A shape style that fills a shape by repeating a region of an image.
- [HierarchicalShapeStyle](/documentation/swiftui/hierarchicalshapestyle) A shape style that maps to one of the numbered content styles.
- [HierarchicalShapeStyleModifier](/documentation/swiftui/hierarchicalshapestylemodifier) Styles that you can apply to hierarchical shapes.
- [ForegroundStyle](/documentation/swiftui/foregroundstyle) The foreground style in the current context.
- [BackgroundStyle](/documentation/swiftui/backgroundstyle) The background style in the current context.
- [SelectionShapeStyle](/documentation/swiftui/selectionshapestyle) A style used to visually indicate selection following platform conventional colors and behaviors.
- [SeparatorShapeStyle](/documentation/swiftui/separatorshapestyle) A style appropriate for foreground separator or border lines.
- [TintShapeStyle](/documentation/swiftui/tintshapestyle) A style that reflects the current tint color.
- [FillShapeStyle](/documentation/swiftui/fillshapestyle) A shape style that displays one of the overlay fills.
- [LinkShapeStyle](/documentation/swiftui/linkshapestyle) A style appropriate for links.
- [PlaceholderTextShapeStyle](/documentation/swiftui/placeholdertextshapestyle) A style appropriate for placeholder text.
- [WindowBackgroundShapeStyle](/documentation/swiftui/windowbackgroundshapestyle) A style appropriate for elements that should match the background of their containing window.

## Instance Methods

- [materialActiveAppearance(_:)](/documentation/swiftui/shapestyle/materialactiveappearance(_:)) Sets an explicit active appearance for materials created by this style.

## Styling content

- [border(_:width:)](/documentation/swiftui/view/border(_:width:))
- [foregroundStyle(_:)](/documentation/swiftui/view/foregroundstyle(_:))
- [foregroundStyle(_:_:)](/documentation/swiftui/view/foregroundstyle(_:_:))
- [foregroundStyle(_:_:_:)](/documentation/swiftui/view/foregroundstyle(_:_:_:))
- [backgroundStyle(_:)](/documentation/swiftui/view/backgroundstyle(_:))
- [backgroundStyle](/documentation/swiftui/environmentvalues/backgroundstyle)
- [AnyShapeStyle](/documentation/swiftui/anyshapestyle)
- [Gradient](/documentation/swiftui/gradient)
- [MeshGradient](/documentation/swiftui/meshgradient)
- [AnyGradient](/documentation/swiftui/anygradient)
- [ShadowStyle](/documentation/swiftui/shadowstyle)
- [Glass](/documentation/swiftui/glass)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
