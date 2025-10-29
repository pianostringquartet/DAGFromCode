---
title: saturation(_:)
description: Adjusts the color saturation of this view.
source: https://developer.apple.com/documentation/swiftui/view/saturation(_:)
timestamp: 2025-10-29T00:09:39.699Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# saturation(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Adjusts the color saturation of this view.

```swift
nonisolated func saturation(_ amount: Double) -> some View
```

## Parameters

**amount**

The amount of saturation to apply to this view.



## Return Value

A view that adjusts the saturation of this view.

## Discussion

Use color saturation to increase or decrease the intensity of colors in a view.

The example below shows a series of red squares with their saturation increasing from 0 (gray) to 100% (fully-red) in 20% increments:

```swift
struct Saturation: View {
    var body: some View {
        HStack {
            ForEach(0..<6) {
                Color.red.frame(width: 60, height: 60, alignment: .center)
                    .saturation(Double($0) * 0.2)
                    .overlay(Text("\(Double($0) * 0.2 * 100, specifier: "%.0f")%"),
                             alignment: .bottom)
                    .border(Color.gray)
            }
        }
    }
}
```



> [!NOTE]
> `contrast(_:)`

## Transforming colors

- [brightness(_:)](/documentation/swiftui/view/brightness(_:))
- [contrast(_:)](/documentation/swiftui/view/contrast(_:))
- [colorInvert()](/documentation/swiftui/view/colorinvert())
- [colorMultiply(_:)](/documentation/swiftui/view/colormultiply(_:))
- [grayscale(_:)](/documentation/swiftui/view/grayscale(_:))
- [hueRotation(_:)](/documentation/swiftui/view/huerotation(_:))
- [luminanceToAlpha()](/documentation/swiftui/view/luminancetoalpha())
- [materialActiveAppearance(_:)](/documentation/swiftui/view/materialactiveappearance(_:))
- [materialActiveAppearance](/documentation/swiftui/environmentvalues/materialactiveappearance)
- [MaterialActiveAppearance](/documentation/swiftui/materialactiveappearance)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
