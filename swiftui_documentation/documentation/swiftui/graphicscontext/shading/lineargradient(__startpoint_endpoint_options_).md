---
title: linearGradient(_:startPoint:endPoint:options:)
description: Returns a shading instance that fills a linear (axial) gradient.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/shading/lineargradient(_:startpoint:endpoint:options:)
timestamp: 2025-10-29T00:14:46.887Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [shading](/documentation/swiftui/graphicscontext/shading)

**Type Method**

# linearGradient(_:startPoint:endPoint:options:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Returns a shading instance that fills a linear (axial) gradient.

```swift
static func linearGradient(_ gradient: Gradient, startPoint: CGPoint, endPoint: CGPoint, options: GraphicsContext.GradientOptions = GradientOptions()) -> GraphicsContext.Shading
```

## Parameters

**gradient**

A [Gradient](/documentation/swiftui/gradient) instance that defines the colors of the gradient.



**startPoint**

The start point of the gradient axis.



**endPoint**

The end point of the gradient axis.



**options**

Options that you use to configure the gradient.



## Return Value

A shading instance filled with a linear gradient.

## Discussion

The shading instance defines an axis from `startPoint` to `endPoint` in the current user space and maps colors from `gradient` to lines perpendicular to the axis.

## Gradients

- [radialGradient(_:center:startRadius:endRadius:options:)](/documentation/swiftui/graphicscontext/shading/radialgradient(_:center:startradius:endradius:options:))
- [conicGradient(_:center:angle:options:)](/documentation/swiftui/graphicscontext/shading/conicgradient(_:center:angle:options:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
