---
title: palette
description: A picker style that presents the options as a row of compact elements.
source: https://developer.apple.com/documentation/swiftui/pickerstyle/palette
timestamp: 2025-10-29T00:14:06.984Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [pickerstyle](/documentation/swiftui/pickerstyle)

**Type Property**

# palette

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> A picker style that presents the options as a row of compact elements.

```swift
static var palette: PalettePickerStyle { get }
```

## Discussion

> [!NOTE]
> When used outside of menus, this style is rendered as a segmented picker. If that is the intended usage, consider [segmented](/documentation/swiftui/pickerstyle/segmented) instead.

For each option’s label, use one symbol per item, if you add more than 6 options, the picker scrolls horizontally on iOS.

The following example creates a palette picker:

```swift
enum Reaction: Identifiable, CaseIterable {
    case thumbsup, thumbsdown, heart, questionMark
    var id: Self { self }
}

@State private var selection: Reaction? = .none

var body: some View {
    Menu("Reactions") {
        Picker("Palette", selection: $selection) {
            Label("Thumbs up", systemImage: "hand.thumbsup")
                .tag(Reaction.thumbsup)
            Label("Thumbs down", systemImage: "hand.thumbsdown")
                .tag(Reaction.thumbsdown)
            Label("Like", systemImage: "heart")
                .tag(Reaction.heart)
            Label("Question mark", systemImage: "questionmark")
                .tag(Reaction.questionMark)
        }
        .pickerStyle(.palette)
        Button("Reply...") { ... }
    }
}
```

Palette pickers will display the selection of untinted SF Symbols or template images by applying the system tint. For tinted SF Symbols, a stroke is outlined around the symbol upon selection. If you would like to supply a particular image (or SF Symbol) to signify selection, we suggest using [custom](/documentation/swiftui/paletteselectioneffect/custom). This deactivates any system selection behavior, allowing the provided image to solely indicate selection instead.

The following example creates a palette picker that disables the system selection behaviour:

```swift
Menu {
    Picker("Palettes", selection: $selection) {
        ForEach(palettes) { palette in
            Label(palette.title, systemImage: selection == palette ?
                  "circle.dashed.inset.filled" : "circle.fill")
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

If a specific SF Symbol variant is preferable instead, use [symbolVariant(_:)](/documentation/swiftui/paletteselectioneffect/symbolvariant(_:)):

```swift
Menu {
    Picker("Flags", selection: $selectedFlag) {
        ForEach(flags) { flag in
            Label(flag.title, systemImage: "flag")
                .tint(flag.color)
                .tag(flag)
        }
    }
    .pickerStyle(.palette)
    .paletteSelectionEffect(.symbolVariant(.slash))
} label: {
    ...
}
```

To apply this style to a picker, or to a view that contains pickers, use the [pickerStyle(_:)](/documentation/swiftui/view/pickerstyle(_:)) modifier.

## Getting built-in picker styles

- [automatic](/documentation/swiftui/pickerstyle/automatic)
- [inline](/documentation/swiftui/pickerstyle/inline)
- [menu](/documentation/swiftui/pickerstyle/menu)
- [navigationLink](/documentation/swiftui/pickerstyle/navigationlink)
- [radioGroup](/documentation/swiftui/pickerstyle/radiogroup)
- [segmented](/documentation/swiftui/pickerstyle/segmented)
- [wheel](/documentation/swiftui/pickerstyle/wheel)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
