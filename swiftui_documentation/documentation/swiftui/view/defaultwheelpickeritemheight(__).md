---
title: defaultWheelPickerItemHeight(_:)
description: Sets the default wheel-style picker item height.
source: https://developer.apple.com/documentation/swiftui/view/defaultwheelpickeritemheight(_:)
timestamp: 2025-10-29T00:12:58.479Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# defaultWheelPickerItemHeight(_:)

**Available on:** watchOS 6.0+

> Sets the default wheel-style picker item height.

```swift
nonisolated func defaultWheelPickerItemHeight(_ height: CGFloat) -> some View
```

## Parameters

**height**

The height for the picker items.



## Discussion

Use `defaultWheelPickerItemHeight(_:)` when you need to change the default item height in a picker control. In this example, the view sets the default height for picker elements to 30 points.

```swift
struct DefaultWheelPickerItemHeight: View {
    @State private var selected = 1
    var body: some View {
        VStack(spacing: 20) {
            Picker(selection: $selected, label: Text("Favorite Color")) {
                Text("Red").tag(1)
                Text("Green").tag(2)
                Text("Blue").tag(3)
                Text("Other").tag(4)
            }
        }
        .defaultWheelPickerItemHeight(30)
    }
}
```



## Choosing from a set of options

- [Picker](/documentation/swiftui/picker)
- [pickerStyle(_:)](/documentation/swiftui/view/pickerstyle(_:))
- [horizontalRadioGroupLayout()](/documentation/swiftui/view/horizontalradiogrouplayout())
- [defaultWheelPickerItemHeight](/documentation/swiftui/environmentvalues/defaultwheelpickeritemheight)
- [paletteSelectionEffect(_:)](/documentation/swiftui/view/paletteselectioneffect(_:))
- [PaletteSelectionEffect](/documentation/swiftui/paletteselectioneffect)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
