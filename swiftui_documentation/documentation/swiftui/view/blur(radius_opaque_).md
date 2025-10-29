---
title: blur(radius:opaque:)
description: Applies a Gaussian blur to this view.
source: https://developer.apple.com/documentation/swiftui/view/blur(radius:opaque:)
timestamp: 2025-10-29T00:14:19.363Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# blur(radius:opaque:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Applies a Gaussian blur to this view.

```swift
nonisolated func blur(radius: CGFloat, opaque: Bool = false) -> some View
```

## Parameters

**radius**

The radial size of the blur. A blur is more diffuse when its radius is large.



**opaque**

A Boolean value that indicates whether the blur renderer permits transparency in the blur output. Set to `true` to create an opaque blur, or set to `false` to permit transparency.



## Discussion

Use `blur(radius:opaque:)` to apply a gaussian blur effect to the rendering of this view.

The example below shows two [Text](/documentation/swiftui/text) views, the first with no blur effects, the second with `blur(radius:opaque:)` applied with the `radius` set to `2`. The larger the radius, the more diffuse the effect.

```swift
struct Blur: View {
    var body: some View {
        VStack {
            Text("This is some text.")
                .padding()
            Text("This is some blurry text.")
                .blur(radius: 2.0)
        }
    }
}
```



## Applying blur and shadows

- [shadow(color:radius:x:y:)](/documentation/swiftui/view/shadow(color:radius:x:y:))
- [ColorMatrix](/documentation/swiftui/colormatrix)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
