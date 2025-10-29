---
title: Fitting images into available space
description: Adjust the size and shape of images in your app’s user interface by applying view modifiers.
source: https://developer.apple.com/documentation/swiftui/fitting-images-into-available-space
timestamp: 2025-10-29T00:10:11.215Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Article**

# Fitting images into available space

> Adjust the size and shape of images in your app’s user interface by applying view modifiers.

## Overview

Image sizes vary widely, from single-pixel PNG files to digital photography images with millions of pixels. Because device sizes also vary, apps commonly need to make runtime adjustments to image sizes so they fit within the visible user interface. SwiftUI provides modifiers to scale, clip, and transform images to fit your interface perfectly.

### Scale a large image to fit its container using resizing

Consider the image `Landscape_4.jpg`, a photograph with the dimensions 4032 x 3024, showing a water wheel, the surrounding building, and the sky above.



The following example loads the image directly into an [Image](/documentation/swiftui/image) view, and then places it in a 300 x 400 point frame, with a blue border:

```swift
    Image("Landscape_4")
        .frame(width: 300, height: 400, alignment: .topLeading)
        .border(.blue)
```

As seen in the following screenshot, the image data loads at full size into the view, so only the clouds from the upper left of the original image are visible. Because the image renders at full size, and the blue frame is smaller than the original image, the image extends beyond the frame’s boundaries.



To fix this, you need to apply two modifiers to the `Image`:

- [resizable(capInsets:resizingMode:)](/documentation/swiftui/image/resizable(capinsets:resizingmode:)) tells the image view to adjust the image representation to match the size of the view. By default, this modifier scales the image by reducing the size of larger images and enlarges images smaller than the view. By itself, this modifier scales each axis of the image independently.
- [aspectRatio(_:contentMode:)](/documentation/swiftui/view/aspectratio(_:contentmode:)) corrects the behavior where the image scaling is different for each axis. This preserves the image’s original aspect ratio, using one of two strategies defined by the [Content Mode](/documentation/swiftui/contentmode) enumeration. [fit](/documentation/swiftui/contentmode/fit) scales the image to fit the view size along one axis, possibly leaving empty space along the other axis. [fill](/documentation/swiftui/contentmode/fill) scales the image to fill the entire view.

```swift
  Image("Landscape_4")
      .resizable()
      .aspectRatio(contentMode: .fit)
      .frame(width: 300, height: 400, alignment: .topLeading)
      .border(.blue)
```



### Keep image data inside the view’s bounds using clipping

If you use [fill](/documentation/swiftui/contentmode/fill) when scaling an image, a portion of an image may extend beyond the view’s bounds, unless the view matches the image’s aspect ratio exactly. The following example illustrates this problem:

```swift
    Image("Landscape_4")
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 300, height: 400, alignment: .topLeading)
        .border(.blue)
```



To prevent this problem, add the [clipped(antialiased:)](/documentation/swiftui/view/clipped(antialiased:)) modifier. This modifier simply cuts off excess image rendering at the bounding frame of the view. Optionally, you can add an antialiasing behavior to apply smoothing to the edges of the clipping rectangle; this parameter defaults to `false`. The following example shows the effect of adding clipping to the previous fill-mode example:

```swift
    Image("Landscape_4")
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 300, height: 400, alignment: .topLeading)
        .border(.blue)
        .clipped()
```



### Use interpolation flags to adjust rendered image quality

Rendering an image at anything other than its original size requires *interpolation*: using the existing image data to approximate a representation at a different size. Different approaches to performing interpolation have different trade-offs between computational complexity and visual quality of the rendered image. You can use the [interpolation(_:)](/documentation/swiftui/image/interpolation(_:)) modifier to provide a hint for SwiftUI rendering behavior.

It’s easier to see the effect of interpolation when scaling a smaller image into a larger space, because the rendered image requires more image data than is available. Consider the following example, which renders a 34 x 34 image named `dot_green` into the same 300 x 400 container frame as before:

```swift
    Image("dot_green")
        .resizable()
        .interpolation(.none)
        .aspectRatio(contentMode: .fit)
        .frame(width: 300, height: 400, alignment: .topLeading)
        .border(.blue)
```

Passing the [none](/documentation/swiftui/image/interpolation/none) value to [interpolation(_:)](/documentation/swiftui/image/interpolation(_:)) results in a highly pixelated rendered image.



If you change the interpolation value to [medium](/documentation/swiftui/image/interpolation/medium), SwiftUI smoothes out the pixel data to produce an image that isn’t as pixelated:



> [!TIP]
> You can also specify interpolation behavior when scaling images down, to ensure the highest quality image possible, fastest rendering time, or a behavior in between.

### Fill a space with a repeating image using tiling

When you have an image that’s much smaller than the space you want to render it into, another option  to fill the space is *tiling*: repeating the same image over and over again. To tile an image, pass the [tile](/documentation/swiftui/image/resizingmode/tile) parameter to the [resizable(capInsets:resizingMode:)](/documentation/swiftui/image/resizable(capinsets:resizingmode:)) modifier:

```swift
    Image("dot_green")
        .resizable(resizingMode: .tile)
        .frame(width: 300, height: 400, alignment: .topLeading)
        .border(.blue)
```



Tiling can be particuarly useful when using an image that, when placed end-to-end with copies of itself, creates a larger pattern with no visual discontinuities.

## Configuring an image

- [imageScale(_:)](/documentation/swiftui/view/imagescale(_:))
- [imageScale](/documentation/swiftui/environmentvalues/imagescale)
- [Image.Scale](/documentation/swiftui/image/scale)
- [Image.Orientation](/documentation/swiftui/image/orientation)
- [Image.ResizingMode](/documentation/swiftui/image/resizingmode)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
