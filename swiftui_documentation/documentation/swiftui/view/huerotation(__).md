---
title: hueRotation(_:)
description: Applies a hue rotation effect to this view.
source: https://developer.apple.com/documentation/swiftui/view/huerotation(_:)
timestamp: 2025-10-29T00:09:51.039Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# hueRotation(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Applies a hue rotation effect to this view.

```swift
nonisolated func hueRotation(_ angle: Angle) -> some View
```

## Parameters

**angle**

The hue rotation angle to apply to the colors in this view.



## Return Value

A view that applies a hue rotation effect to this view.

## Discussion

Use hue rotation effect to shift all of the colors in a view according to the angle you specify.

The example below shows a series of squares filled with a linear gradient. Each square shows the effect of a 36˚ hueRotation (a total of 180˚ across the 5 squares) on the gradient:

```swift
struct HueRotation: View {
    var body: some View {
        HStack {
            ForEach(0..<6) {
                Rectangle()
                    .fill(.linearGradient(
                        colors: [.blue, .red, .green],
                        startPoint: .top, endPoint: .bottom))
                    .hueRotation((.degrees(Double($0 * 36))))
                    .frame(width: 60, height: 60, alignment: .center)
            }
        }
    }
}
```



## Transforming colors

- [brightness(_:)](/documentation/swiftui/view/brightness(_:))
- [contrast(_:)](/documentation/swiftui/view/contrast(_:))
- [colorInvert()](/documentation/swiftui/view/colorinvert())
- [colorMultiply(_:)](/documentation/swiftui/view/colormultiply(_:))
- [saturation(_:)](/documentation/swiftui/view/saturation(_:))
- [grayscale(_:)](/documentation/swiftui/view/grayscale(_:))
- [luminanceToAlpha()](/documentation/swiftui/view/luminancetoalpha())
- [materialActiveAppearance(_:)](/documentation/swiftui/view/materialactiveappearance(_:))
- [materialActiveAppearance](/documentation/swiftui/environmentvalues/materialactiveappearance)
- [MaterialActiveAppearance](/documentation/swiftui/materialactiveappearance)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
