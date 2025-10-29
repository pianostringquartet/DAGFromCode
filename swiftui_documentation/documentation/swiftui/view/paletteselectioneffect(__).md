---
title: paletteSelectionEffect(_:)
description: Specifies the selection effect to apply to a palette item.
source: https://developer.apple.com/documentation/swiftui/view/paletteselectioneffect(_:)
timestamp: 2025-10-29T00:10:38.101Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# paletteSelectionEffect(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> Specifies the selection effect to apply to a palette item.

```swift
nonisolated func paletteSelectionEffect(_ effect: PaletteSelectionEffect) -> some View
```

## Parameters

**effect**

The type of effect to apply when a palette item is selected.



## Discussion

[automatic](/documentation/swiftui/paletteselectioneffect/automatic) applies the system’s default appearance when selected. When using un-tinted SF Symbols or template images, the current tint color is applied to the selected items’ image. If the provided SF Symbols have custom tints, a stroke is drawn around selected items.

If you wish to provide a specific image (or SF Symbol) to indicate selection, use [custom](/documentation/swiftui/paletteselectioneffect/custom) to forgo the system’s default selection appearance allowing the provided image to solely indicate selection instead.

The following example creates a palette picker that disables the system selection behavior:

```swift
Menu {
    Picker("Palettes", selection: $selection) {
        ForEach(palettes) { palette in
            Label(palette.title, image: selection == palette ?
                  "selected-palette" : "palette")
            .tint(palette.tint)
            .tag(palette)
        }
    }
    .pickerStyle(.palette)
    .paletteSelectionEffect(.custom)
} label: {
    ...
}
```

If a specific SF Symbol variant is preferable instead, use [symbolVariant(_:)](/documentation/swiftui/paletteselectioneffect/symbolvariant(_:)).

```swift
Menu {
    ControlGroup {
        ForEach(ColorTags.allCases) { colorTag in
            Toggle(isOn: $selectedColorTags[colorTag]) {
                Label(colorTag.name, systemImage: "circle")
            }
            .tint(colorTag.color)
        }
    }
    .controlGroupStyle(.palette)
    .paletteSelectionEffect(.symbolVariant(.fill))
}
```

## Choosing from a set of options

- [Picker](/documentation/swiftui/picker)
- [pickerStyle(_:)](/documentation/swiftui/view/pickerstyle(_:))
- [horizontalRadioGroupLayout()](/documentation/swiftui/view/horizontalradiogrouplayout())
- [defaultWheelPickerItemHeight(_:)](/documentation/swiftui/view/defaultwheelpickeritemheight(_:))
- [defaultWheelPickerItemHeight](/documentation/swiftui/environmentvalues/defaultwheelpickeritemheight)
- [PaletteSelectionEffect](/documentation/swiftui/paletteselectioneffect)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
