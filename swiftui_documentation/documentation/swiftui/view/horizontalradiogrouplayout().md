---
title: horizontalRadioGroupLayout()
description: Sets the style for radio group style pickers within this view to be horizontally positioned with the radio buttons inside the layout.
source: https://developer.apple.com/documentation/swiftui/view/horizontalradiogrouplayout()
timestamp: 2025-10-29T00:10:16.456Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# horizontalRadioGroupLayout()

**Available on:** macOS 10.15+

> Sets the style for radio group style pickers within this view to be horizontally positioned with the radio buttons inside the layout.

```swift
nonisolated func horizontalRadioGroupLayout() -> some View
```

## Discussion

Use `horizontalRadioGroupLayout()` to configure the visual layout of radio buttons in a [Picker](/documentation/swiftui/picker) so that the radio buttons are arranged horizontally in the view.

The example below shows two [Picker](/documentation/swiftui/picker) controls configured as radio button groups; the first group shows the default vertical layout; the second group shows the effect of `horizontalRadioGroupLayout()` which renders the radio buttons horizontally.

```swift
struct HorizontalRadioGroupLayout: View {
    @State private var selected = 1
    var body: some View {
        VStack(spacing: 20) {
            Picker(selection: $selected, label: Text("Favorite Color")) {
                Text("Red").tag(1)
                Text("Green").tag(2)
                Text("Blue").tag(3)
                Text("Other").tag(4)
            }
            .pickerStyle(.radioGroup)

            Picker(selection: $selected, label: Text("Favorite Color")) {
                Text("Red").tag(1)
                Text("Green").tag(2)
                Text("Blue").tag(3)
                Text("Other").tag(4)
            }
            .pickerStyle(.radioGroup)
            .horizontalRadioGroupLayout()
        }
        .padding(20)
        .border(Color.gray)
    }
}
```



## Choosing from a set of options

- [Picker](/documentation/swiftui/picker)
- [pickerStyle(_:)](/documentation/swiftui/view/pickerstyle(_:))
- [defaultWheelPickerItemHeight(_:)](/documentation/swiftui/view/defaultwheelpickeritemheight(_:))
- [defaultWheelPickerItemHeight](/documentation/swiftui/environmentvalues/defaultwheelpickeritemheight)
- [paletteSelectionEffect(_:)](/documentation/swiftui/view/paletteselectioneffect(_:))
- [PaletteSelectionEffect](/documentation/swiftui/paletteselectioneffect)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
