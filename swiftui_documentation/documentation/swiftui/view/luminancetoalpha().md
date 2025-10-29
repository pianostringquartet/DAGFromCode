---
title: luminanceToAlpha()
description: Adds a luminance to alpha effect to this view.
source: https://developer.apple.com/documentation/swiftui/view/luminancetoalpha()
timestamp: 2025-10-29T00:09:15.850Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# luminanceToAlpha()

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Adds a luminance to alpha effect to this view.

```swift
nonisolated func luminanceToAlpha() -> some View
```

## Return Value

A view with the luminance to alpha effect applied.

## Discussion

Use this modifier to create a semitransparent mask, with the opacity of each part of the modified view controlled by the luminance of the corresponding part of the original view. Regions of lower luminance become more transparent, while higher luminance yields greater opacity.

In particular, the modifier maps the red, green, and blue components of each input pixel’s color to a grayscale value, and that value becomes the alpha component of a black pixel in the output. This modifier produces an effect that’s equivalent to using the `feColorMatrix` filter primitive with the `luminanceToAlpha` type attribute, as defined by the [](https://www.w3.org/TR/SVG2/) specification.

The example below defines a `Palette` view as a series of rectangles, each composed as a [Color](/documentation/swiftui/color) with a particular white value, and then displays two versions of the palette over a blue background:

```swift
struct Palette: View {
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<10) { index in
                Color(white: Double(index) / Double(9))
                    .frame(width: 20, height: 40)
            }
        }
    }
}

struct LuminanceToAlphaExample: View {
    var body: some View {
        VStack(spacing: 20) {
            Palette()

            Palette()
                .luminanceToAlpha()
        }
        .padding()
        .background(.blue)
    }
}
```

The unmodified version of the palette contains rectangles that range from solid black to solid white, thus with increasing luminance. The second version of the palette, which has the `luminanceToAlpha()` modifier applied, allows the background to show through in an amount that corresponds inversely to the luminance of the input.



## Transforming colors

- [brightness(_:)](/documentation/swiftui/view/brightness(_:))
- [contrast(_:)](/documentation/swiftui/view/contrast(_:))
- [colorInvert()](/documentation/swiftui/view/colorinvert())
- [colorMultiply(_:)](/documentation/swiftui/view/colormultiply(_:))
- [saturation(_:)](/documentation/swiftui/view/saturation(_:))
- [grayscale(_:)](/documentation/swiftui/view/grayscale(_:))
- [hueRotation(_:)](/documentation/swiftui/view/huerotation(_:))
- [materialActiveAppearance(_:)](/documentation/swiftui/view/materialactiveappearance(_:))
- [materialActiveAppearance](/documentation/swiftui/environmentvalues/materialactiveappearance)
- [MaterialActiveAppearance](/documentation/swiftui/materialactiveappearance)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
