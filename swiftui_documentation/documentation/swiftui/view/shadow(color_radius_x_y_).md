---
title: shadow(color:radius:x:y:)
description: Adds a shadow to this view.
source: https://developer.apple.com/documentation/swiftui/view/shadow(color:radius:x:y:)
timestamp: 2025-10-29T00:09:53.935Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# shadow(color:radius:x:y:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Adds a shadow to this view.

```swift
nonisolated func shadow(color: Color = Color(.sRGBLinear, white: 0, opacity: 0.33), radius: CGFloat, x: CGFloat = 0, y: CGFloat = 0) -> some View
```

## Parameters

**color**

The shadow’s color.



**radius**

A measure of how much to blur the shadow. Larger values result in more blur.



**x**

An amount to offset the shadow horizontally from the view.



**y**

An amount to offset the shadow vertically from the view.



## Return Value

A view that adds a shadow to this view.

## Discussion

Use this modifier to add a shadow of a specified color behind a view. You can offset the shadow from its view independently in the horizontal and vertical dimensions using the `x` and `y` parameters. You can also blur the edges of the shadow using the `radius` parameter. Use a radius of zero to create a sharp shadow. Larger radius values produce softer shadows.

The example below creates a grid of boxes with varying offsets and blur. Each box displays its radius and offset values for reference.

```swift
struct Shadow: View {
    let steps = [0, 5, 10]

    var body: some View {
        VStack(spacing: 50) {
            ForEach(steps, id: \.self) { offset in
                HStack(spacing: 50) {
                    ForEach(steps, id: \.self) { radius in
                        Color.blue
                            .shadow(
                                color: .primary,
                                radius: CGFloat(radius),
                                x: CGFloat(offset), y: CGFloat(offset))
                            .overlay {
                                VStack {
                                    Text("\(radius)")
                                    Text("(\(offset), \(offset))")
                                }
                            }
                    }
                }
            }
        }
    }
}
```



The example above uses [primary](/documentation/swiftui/color/primary) as the color to make the shadow easy to see for the purpose of illustration. In practice, you might prefer something more subtle, like [gray](/documentation/swiftui/color/gray). If you don’t specify a color, the method uses a semi-transparent black.

## Applying blur and shadows

- [blur(radius:opaque:)](/documentation/swiftui/view/blur(radius:opaque:))
- [ColorMatrix](/documentation/swiftui/colormatrix)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
