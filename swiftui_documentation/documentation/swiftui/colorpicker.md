---
title: ColorPicker
description: A control used to select a color from the system color picker UI.
source: https://developer.apple.com/documentation/swiftui/colorpicker
timestamp: 2025-10-29T00:09:37.544Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ColorPicker

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> A control used to select a color from the system color picker UI.

```swift
struct ColorPicker<Label> where Label : View
```

## Overview

The color picker shows the currently selected color and displays the larger system color picker that allows people to select a new color.

By default color picker supports colors with opacity; to disable opacity support, set the `supportsOpacity` parameter to `false`. In this mode the color picker won’t show controls for adjusting the opacity of the selected color, and strips out opacity from any color set programmatically or selected from the user’s system favorites.

You use `ColorPicker` by embedding it inside a view hierarchy and initializing it with a title string and a [Binding](/documentation/swiftui/binding) to a [Color](/documentation/swiftui/color):

```swift
struct FormattingControls: View {
    @State private var bgColor =
        Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)

    var body: some View {
        VStack {
            ColorPicker("Alignment Guides", selection: $bgColor)
        }
    }
}
```

## Conforms To

- [View](/documentation/swiftui/view)

## Creating a color picker

- [init(_:selection:supportsOpacity:)](/documentation/swiftui/colorpicker/init(_:selection:supportsopacity:)) Creates a color picker with a text label generated from a title string key.
- [init(selection:supportsOpacity:label:)](/documentation/swiftui/colorpicker/init(selection:supportsopacity:label:)) Creates an instance that selects a color.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
