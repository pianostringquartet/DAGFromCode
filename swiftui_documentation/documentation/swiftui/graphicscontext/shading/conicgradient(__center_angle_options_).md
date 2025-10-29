---
title: conicGradient(_:center:angle:options:)
description: Returns a shading instance that fills a conic (angular) gradient.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/shading/conicgradient(_:center:angle:options:)
timestamp: 2025-10-29T00:10:40.908Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [shading](/documentation/swiftui/graphicscontext/shading)

**Type Method**

# conicGradient(_:center:angle:options:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Returns a shading instance that fills a conic (angular) gradient.

```swift
static func conicGradient(_ gradient: Gradient, center: CGPoint, angle: Angle = Angle(), options: GraphicsContext.GradientOptions = GradientOptions()) -> GraphicsContext.Shading
```

## Parameters

**gradient**

A [Gradient](/documentation/swiftui/gradient) instance that defines the colors of the gradient.



**center**

The point in the current user space on which SwiftUI centers the gradient.



**angle**

The angle about the center that SwiftUI uses to start and finish the gradient. The gradient sweeps all the way around the center.



**options**

Options that you use to configure the gradient.



## Return Value

A shading instance filled with a conic gradient.

## Gradients

- [linearGradient(_:startPoint:endPoint:options:)](/documentation/swiftui/graphicscontext/shading/lineargradient(_:startpoint:endpoint:options:))
- [radialGradient(_:center:startRadius:endRadius:options:)](/documentation/swiftui/graphicscontext/shading/radialgradient(_:center:startradius:endradius:options:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
