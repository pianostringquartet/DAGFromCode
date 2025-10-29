---
title: shadow(color:radius:x:y:blendMode:options:)
description: Returns a filter that adds a shadow.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/filter/shadow(color:radius:x:y:blendmode:options:)
timestamp: 2025-10-29T00:13:51.050Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [filter](/documentation/swiftui/graphicscontext/filter)

**Type Method**

# shadow(color:radius:x:y:blendMode:options:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Returns a filter that adds a shadow.

```swift
static func shadow(color: Color = Color(.sRGBLinear, white: 0, opacity: 0.33), radius: CGFloat, x: CGFloat = 0, y: CGFloat = 0, blendMode: GraphicsContext.BlendMode = .normal, options: GraphicsContext.ShadowOptions = ShadowOptions()) -> GraphicsContext.Filter
```

## Parameters

**color**

A [Color](/documentation/swiftui/color) that tints the shadow.



**radius**

A measure of how far the shadow extends from the edges of the content receiving the shadow.



**x**

An amount to translate the shadow horizontally.



**y**

An amount to translate the shadow vertically.



**blendMode**

The [Blend Mode-swift.struct](/documentation/swiftui/graphicscontext/blendmode-swift.struct) to use when blending the shadow into the background layer.



**options**

A set of options that you can use to customize the process of adding the shadow. Use one or more of the options in [Shadow Options](/documentation/swiftui/graphicscontext/shadowoptions).



## Return Value

A filter that adds a shadow style.

## Discussion

SwiftUI produces the shadow by blurring the alpha channel of the object receiving the shadow, multiplying the result by a color, optionally translating the shadow by an amount, and then blending the resulting shadow into a new layer below the source primitive. You can customize some of these steps by adding one or more shadow options.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
