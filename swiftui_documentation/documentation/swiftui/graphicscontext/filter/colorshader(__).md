---
title: colorShader(_:)
description: Returns a filter that applies  to the color of each source pixel.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/filter/colorshader(_:)
timestamp: 2025-10-29T00:10:24.050Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [filter](/documentation/swiftui/graphicscontext/filter)

**Type Method**

# colorShader(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+

> Returns a filter that applies  to the color of each source pixel.

```swift
static func colorShader(_ shader: Shader) -> GraphicsContext.Filter
```

## Parameters

**shader**

The shader to apply to `self` as a color filter.



## Return Value

A filter that applies the shader  as a color filter.

## Discussion

For a shader function to act as a color filter it must have a function signature matching:

```swift
[[ stitchable ]] half4 name(float2 position, half4 color, args...)
```

where `position` is the user-space coordinates of the pixel applied to the shader and `color` its source color, as a pre-multiplied color in the destination color space. `args...` should be compatible with the uniform arguments bound to `shader`. The function should return the modified color value.

## Using a custom Metal shader

- [distortionShader(_:maxSampleOffset:)](/documentation/swiftui/graphicscontext/filter/distortionshader(_:maxsampleoffset:))
- [layerShader(_:maxSampleOffset:)](/documentation/swiftui/graphicscontext/filter/layershader(_:maxsampleoffset:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
