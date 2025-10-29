---
title: accentColor(_:)
description: Sets the accent color for this view and the views it contains.
source: https://developer.apple.com/documentation/swiftui/view/accentcolor(_:)
timestamp: 2025-10-29T00:09:41.994Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# accentColor(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sets the accent color for this view and the views it contains.

```swift
nonisolated func accentColor(_ accentColor: Color?) -> some View
```

## Parameters

**accentColor**

The color to use as an accent color. Set the value to `nil` to use the inherited accent color.



## Discussion

Use `accentColor(_:)` when you want to apply a broad theme color to your app’s user interface. Some styles of controls use the accent color as a default tint color.

> [!NOTE]
> In macOS, SwiftUI applies customization of the accent color only if the user chooses Multicolor under General > Accent color in System Preferences.

In the example below, the outer [VStack](/documentation/swiftui/vstack) contains two child views. The first is a button with the default accent color. The second is a [VStack](/documentation/swiftui/vstack) that contains a button and a slider, both of which adopt the purple accent color of their containing view. Note that the [Text](/documentation/swiftui/text) element used as a label alongside the `Slider` retains its default color.

```swift
VStack(spacing: 20) {
    Button(action: {}) {
        Text("Regular Button")
    }
    VStack {
        Button(action: {}) {
            Text("Accented Button")
        }
        HStack {
            Text("Accented Slider")
            Slider(value: $sliderValue, in: -100...100, step: 0.1)
        }
    }
    .accentColor(.purple)
}
```



## Graphics and rendering modifiers

- [mask(_:)](/documentation/swiftui/view/mask(_:))
- [animation(_:)](/documentation/swiftui/view/animation(_:)-1hc0p)
- [cornerRadius(_:antialiased:)](/documentation/swiftui/view/cornerradius(_:antialiased:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
