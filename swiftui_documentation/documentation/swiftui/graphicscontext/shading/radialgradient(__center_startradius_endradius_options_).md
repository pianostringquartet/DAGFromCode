---
title: radialGradient(_:center:startRadius:endRadius:options:)
description: Returns a shading instance that fills a radial gradient.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/shading/radialgradient(_:center:startradius:endradius:options:)
timestamp: 2025-10-29T00:15:15.588Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [shading](/documentation/swiftui/graphicscontext/shading)

**Type Method**

# radialGradient(_:center:startRadius:endRadius:options:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Returns a shading instance that fills a radial gradient.

```swift
static func radialGradient(_ gradient: Gradient, center: CGPoint, startRadius: CGFloat, endRadius: CGFloat, options: GraphicsContext.GradientOptions = GradientOptions()) -> GraphicsContext.Shading
```

## Parameters

**gradient**

A [Gradient](/documentation/swiftui/gradient) instance that defines the colors of the gradient.



**center**

The point in the current user space on which SwiftUI centers the gradient.



**startRadius**

The distance from the center where the gradient starts.



**endRadius**

The distance from the center where the gradient ends.



**options**

Options that you use to configure the gradient.



## Return Value

A shading instance filled with a radial gradient.

## Gradients

- [linearGradient(_:startPoint:endPoint:options:)](/documentation/swiftui/graphicscontext/shading/lineargradient(_:startpoint:endpoint:options:))
- [conicGradient(_:center:angle:options:)](/documentation/swiftui/graphicscontext/shading/conicgradient(_:center:angle:options:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
