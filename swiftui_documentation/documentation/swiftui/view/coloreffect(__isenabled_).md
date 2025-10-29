---
title: colorEffect(_:isEnabled:)
description: Returns a new view that applies  to  as a filter effect on the color of each pixel.
source: https://developer.apple.com/documentation/swiftui/view/coloreffect(_:isenabled:)
timestamp: 2025-10-29T00:10:16.455Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# colorEffect(_:isEnabled:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+

> Returns a new view that applies  to  as a filter effect on the color of each pixel.

```swift
nonisolated func colorEffect(_ shader: Shader, isEnabled: Bool = true) -> some View
```

## Parameters

**shader**

The shader to apply to `self` as a color filter.



**isEnabled**

Whether the effect is enabled or not.



## Return Value

A new view that renders `self` with the shader applied as a color filter.

## Discussion

For a shader function to act as a color filter it must have a function signature matching:

```swift
[[ stitchable ]] half4 name(float2 position, half4 color, args...)
```

where `position` is the user-space coordinates of the pixel applied to the shader and `color` its source color, as a pre-multiplied color in the destination color space. `args...` should be compatible with the uniform arguments bound to `shader`. The function should return the modified color value.

> [!IMPORTANT]
> Views backed by AppKit or UIKit views may not render into the filtered layer. Instead, they log a warning and display a placeholder image to highlight the error.

## Accessing Metal shaders

- [distortionEffect(_:maxSampleOffset:isEnabled:)](/documentation/swiftui/view/distortioneffect(_:maxsampleoffset:isenabled:))
- [layerEffect(_:maxSampleOffset:isEnabled:)](/documentation/swiftui/view/layereffect(_:maxsampleoffset:isenabled:))
- [Shader](/documentation/swiftui/shader)
- [ShaderFunction](/documentation/swiftui/shaderfunction)
- [ShaderLibrary](/documentation/swiftui/shaderlibrary)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
