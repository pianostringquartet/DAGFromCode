---
title: colorMultiply(_:)
description: Adds a color multiplication effect to this view.
source: https://developer.apple.com/documentation/swiftui/view/colormultiply(_:)
timestamp: 2025-10-29T00:10:18.396Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# colorMultiply(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Adds a color multiplication effect to this view.

```swift
nonisolated func colorMultiply(_ color: Color) -> some View
```

## Parameters

**color**

The color to bias this view toward.



## Return Value

A view with a color multiplication effect.

## Discussion

The following example shows two versions of the same image side by side; at left is the original, and at right is a duplicate with the `colorMultiply(_:)` modifier applied with [purple](/documentation/swiftui/shapestyle/purple).

```swift
struct InnerCircleView: View {
    var body: some View {
        Circle()
            .fill(Color.green)
            .frame(width: 40, height: 40, alignment: .center)
    }
}

struct ColorMultiply: View {
    var body: some View {
        HStack {
            Color.red.frame(width: 100, height: 100, alignment: .center)
                .overlay(InnerCircleView(), alignment: .center)
                .overlay(Text("Normal")
                             .font(.callout),
                         alignment: .bottom)
                .border(Color.gray)

            Spacer()

            Color.red.frame(width: 100, height: 100, alignment: .center)
                .overlay(InnerCircleView(), alignment: .center)
                .colorMultiply(Color.purple)
                .overlay(Text("Multiply")
                            .font(.callout),
                         alignment: .bottom)
                .border(Color.gray)
        }
        .padding(50)
    }
}
```



## Transforming colors

- [brightness(_:)](/documentation/swiftui/view/brightness(_:))
- [contrast(_:)](/documentation/swiftui/view/contrast(_:))
- [colorInvert()](/documentation/swiftui/view/colorinvert())
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
