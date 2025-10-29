---
title: layerShader(_:maxSampleOffset:)
description: Returns a filter that applies  to the contents of the source layer.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/filter/layershader(_:maxsampleoffset:)
timestamp: 2025-10-29T00:11:06.420Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [filter](/documentation/swiftui/graphicscontext/filter)

**Type Method**

# layerShader(_:maxSampleOffset:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+

> Returns a filter that applies  to the contents of the source layer.

```swift
static func layerShader(_ shader: Shader, maxSampleOffset: CGSize) -> GraphicsContext.Filter
```

## Parameters

**shader**

The shader to apply as a layer effect.



**maxSampleOffset**

If the shader function samples from the layer at locations not equal to the destination position, this value must specify the maximum sampling distance in each axis, for all source pixels.



## Return Value

A filter applies the shader as a layer effect.

## Discussion

For a shader function to act as a layer effect it must have a function signature matching:

```swift
[[ stitchable ]] half4 name(float2 position,
  SwiftUI::Layer layer, args...)
```

where `position` is the user-space coordinates of the destination pixel applied to the shader, and `layer` is a rasterized subregion of the source layer. `args...` should be compatible with the uniform arguments bound to `shader`.

The `SwiftUI::Layer` type is defined in the `<SwiftUI/SwiftUI.h>` header file. It exports a single `sample()` function that returns a linearly-filtered pixel value from a position in the source content, as a premultiplied RGBA pixel value:

```swift
namespace SwiftUI {
  struct Layer {
    half4 sample(float2 position) const;
  };
};
```

The function should return the color mapping to the destination pixel, typically by sampling one or more pixels from `layer` at location(s) derived from `position` and them applying some kind of transformation to produce a new color.

## Using a custom Metal shader

- [colorShader(_:)](/documentation/swiftui/graphicscontext/filter/colorshader(_:))
- [distortionShader(_:maxSampleOffset:)](/documentation/swiftui/graphicscontext/filter/distortionshader(_:maxsampleoffset:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
