---
title: shader(_:bounds:)
description: Returns a shading instance that fills with the results of querying a shader for each pixel.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/shading/shader(_:bounds:)
timestamp: 2025-10-29T00:11:54.582Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [shading](/documentation/swiftui/graphicscontext/shading)

**Type Method**

# shader(_:bounds:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+

> Returns a shading instance that fills with the results of querying a shader for each pixel.

```swift
static func shader(_ shader: Shader, bounds: CGRect = .zero) -> GraphicsContext.Shading
```

## Parameters

**shader**

The shader defining the filled colors.



**bounds**

The rect used to define any `bounds` arguments of the shader.



## Return Value

A shading instance that fills using the shader.

## Discussion

For a shader function to act as a shape fill it must have a function signature matching:

```swift
[[ stitchable ]] half4 name(float2 position, args...)
```

where `position` is the user-space coordinates of the pixel applied to the shader, and `args...` should be compatible with the uniform arguments bound to `shader`. The function should return the premultiplied color value in the color space of the destination (typically sRGB).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
