---
title: palette
description: A control group style that presents its content as a palette.
source: https://developer.apple.com/documentation/swiftui/controlgroupstyle/palette
timestamp: 2025-10-29T00:11:53.468Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [controlgroupstyle](/documentation/swiftui/controlgroupstyle)

**Type Property**

# palette

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> A control group style that presents its content as a palette.

```swift
@MainActor @preconcurrency static var palette: PaletteControlGroupStyle { get }
```

## Discussion

> [!NOTE]
> When used outside of menus, this style is rendered as a segmented control.

Use this style to render a multi-select or a stateless palette. The following example creates a control group that contains both type of shelves:

```swift
Menu {
    // A multi select palette
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

    // A momentary / stateless palette
    ControlGroup {
        ForEach(Emotes.allCases) { emote in
            Button {
                sendEmote(emote)
            } label: {
                Label(emote.name, systemImage: emote.systemImage)
            }
        }
    }
    .controlGroupStyle(.palette)
}
```

To apply this style to a control group, or to a view that contains control groups, use the [controlGroupStyle(_:)](/documentation/swiftui/view/controlgroupstyle(_:)) modifier.

## Getting built-in control group styles

- [automatic](/documentation/swiftui/controlgroupstyle/automatic)
- [compactMenu](/documentation/swiftui/controlgroupstyle/compactmenu)
- [menu](/documentation/swiftui/controlgroupstyle/menu)
- [navigation](/documentation/swiftui/controlgroupstyle/navigation)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
