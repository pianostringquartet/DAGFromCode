---
title: distortionShader(_:maxSampleOffset:)
description: Returns a filter that applies  as a geometric distortion effect on the location of each pixel.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/filter/distortionshader(_:maxsampleoffset:)
timestamp: 2025-10-29T00:14:10.848Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [filter](/documentation/swiftui/graphicscontext/filter)

**Type Method**

# distortionShader(_:maxSampleOffset:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+

> Returns a filter that applies  as a geometric distortion effect on the location of each pixel.

```swift
static func distortionShader(_ shader: Shader, maxSampleOffset: CGSize) -> GraphicsContext.Filter
```

## Parameters

**shader**

The shader to apply as a distortion effect.



**maxSampleOffset**

The maximum distance in each axis between the returned source pixel position and the destination pixel position, for all source pixels.



## Return Value

A new filter that applies the shader as a distortion effect.

## Discussion

For a shader function to act as a distortion effect it must have a function signature matching:

```swift
[[ stitchable ]] float2 name(float2 position, args...)
```

where `position` is the user-space coordinates of the destination pixel applied to the shader. `args...` should be compatible with the uniform arguments bound to `shader`. The function should return the user-space coordinates of the corresponding source pixel.

## Using a custom Metal shader

- [colorShader(_:)](/documentation/swiftui/graphicscontext/filter/colorshader(_:))
- [layerShader(_:maxSampleOffset:)](/documentation/swiftui/graphicscontext/filter/layershader(_:maxsampleoffset:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
