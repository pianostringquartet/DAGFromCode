---
title: distortionEffect(_:maxSampleOffset:isEnabled:)
description: Returns a new view that applies  to  as a geometric distortion effect on the location of each pixel.
source: https://developer.apple.com/documentation/swiftui/view/distortioneffect(_:maxsampleoffset:isenabled:)
timestamp: 2025-10-29T00:14:40.430Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# distortionEffect(_:maxSampleOffset:isEnabled:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+

> Returns a new view that applies  to  as a geometric distortion effect on the location of each pixel.

```swift
nonisolated func distortionEffect(_ shader: Shader, maxSampleOffset: CGSize, isEnabled: Bool = true) -> some View
```

## Parameters

**shader**

The shader to apply as a distortion effect.



**maxSampleOffset**

The maximum distance in each axis between the returned source pixel position and the destination pixel position, for all source pixels.



**isEnabled**

Whether the effect is enabled or not.



## Return Value

A new view that renders `self` with the shader applied as a distortion effect.

## Discussion

For a shader function to act as a distortion effect it must have a function signature matching:

```swift
[[ stitchable ]] float2 name(float2 position, args...)
```

where `position` is the user-space coordinates of the destination pixel applied to the shader. `args...` should be compatible with the uniform arguments bound to `shader`. The function should return the user-space coordinates of the corresponding source pixel.

> [!IMPORTANT]
> Views backed by AppKit or UIKit views may not render into the filtered layer. Instead, they log a warning and display a placeholder image to highlight the error.

## Accessing Metal shaders

- [colorEffect(_:isEnabled:)](/documentation/swiftui/view/coloreffect(_:isenabled:))
- [layerEffect(_:maxSampleOffset:isEnabled:)](/documentation/swiftui/view/layereffect(_:maxsampleoffset:isenabled:))
- [Shader](/documentation/swiftui/shader)
- [ShaderFunction](/documentation/swiftui/shaderfunction)
- [ShaderLibrary](/documentation/swiftui/shaderlibrary)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
