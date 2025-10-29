---
title: brightness(_:)
description: Brightens this view by the specified amount.
source: https://developer.apple.com/documentation/swiftui/view/brightness(_:)
timestamp: 2025-10-29T00:14:41.763Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# brightness(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Brightens this view by the specified amount.

```swift
nonisolated func brightness(_ amount: Double) -> some View
```

## Parameters

**amount**

A value between 0 (no effect) and 1 (full white brightening) that represents the intensity of the brightness effect.



## Return Value

A view that brightens this view by the specified amount.

## Discussion

Use `brightness(_:)` to brighten the intensity of the colors in a view. The example below shows a series of red squares, with their brightness increasing from 0 (fully red) to 100% (white) in 20% increments.

```swift
struct Brightness: View {
    var body: some View {
        HStack {
            ForEach(0..<6) {
                Color.red.frame(width: 60, height: 60, alignment: .center)
                    .brightness(Double($0) * 0.2)
                    .overlay(Text("\(Double($0) * 0.2 * 100, specifier: "%.0f")%"),
                             alignment: .bottom)
                    .border(Color.gray)
            }
        }
    }
}
```



## Transforming colors

- [contrast(_:)](/documentation/swiftui/view/contrast(_:))
- [colorInvert()](/documentation/swiftui/view/colorinvert())
- [colorMultiply(_:)](/documentation/swiftui/view/colormultiply(_:))
- [saturation(_:)](/documentation/swiftui/view/saturation(_:))
- [grayscale(_:)](/documentation/swiftui/view/grayscale(_:))
- [hueRotation(_:)](/documentation/swiftui/view/huerotation(_:))
- [luminanceToAlpha()](/documentation/swiftui/view/luminancetoalpha())
- [materialActiveAppearance(_:)](/documentation/swiftui/view/materialactiveappearance(_:))
- [materialActiveAppearance](/documentation/swiftui/environmentvalues/materialactiveappearance)
- [MaterialActiveAppearance](/documentation/swiftui/materialactiveappearance)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
