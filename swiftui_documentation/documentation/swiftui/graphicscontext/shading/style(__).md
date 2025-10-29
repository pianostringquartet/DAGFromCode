---
title: style(_:)
description: Returns a shading instance that fills with the given shape style.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/shading/style(_:)
timestamp: 2025-10-29T00:09:23.723Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [shading](/documentation/swiftui/graphicscontext/shading)

**Type Method**

# style(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Returns a shading instance that fills with the given shape style.

```swift
static func style<S>(_ style: S) -> GraphicsContext.Shading where S : ShapeStyle
```

## Parameters

**style**

A [Shape Style](/documentation/swiftui/shapestyle) instance to draw with.



## Return Value

A shading instance filled with a shape style.

## Discussion

Styles with geometry defined in a unit coordinate space map that space to the rectangle associated with the drawn object. You can adjust that using the [in(_:)](/documentation/swiftui/shapestyle/in(_:)) method. The shape style might affect the blend mode and opacity of the drawn object.

## Other shape styles

- [foreground](/documentation/swiftui/graphicscontext/shading/foreground)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
