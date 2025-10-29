---
title: selection
description: A style used to visually indicate selection following platform conventional colors and behaviors.
source: https://developer.apple.com/documentation/swiftui/shapestyle/selection
timestamp: 2025-10-29T00:13:09.731Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shapestyle](/documentation/swiftui/shapestyle)

**Type Property**

# selection

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, visionOS 1.0+

> A style used to visually indicate selection following platform conventional colors and behaviors.

```swift
static var selection: SelectionShapeStyle { get }
```

## Discussion

For example:

```swift
ForEach(items) {
   ItemView(value: item, isSelected: item.id == selectedID)
}

struct ItemView {
    var value: item
    var isSelected: Bool

    var body: some View {
        // construct the actual cell content
            .background(isSelected
                ? AnyShapeStyle(.selection)
                    : AnyShapeStyle(.fill.quaternary),
                in: .rect(cornerRadius: 6))
    }
}
```

On macOS and iPadOS this automatically reflects window key state and focus state, where the emphasized appearance will be used only when the window is key and the nearest focusable element is actually focused. On iPhone, this will always fill with the environment’s accent color.

When applied as a background of another view, it will automatically set the `EnvironmentValues.backgroundProminence` for the environment of that view to match the current prominence of the selection.

For information about how to use shape styles, see [Shape Style](/documentation/swiftui/shapestyle).

## Semantic styles

- [foreground](/documentation/swiftui/shapestyle/foreground)
- [background](/documentation/swiftui/shapestyle/background)
- [separator](/documentation/swiftui/shapestyle/separator)
- [tint](/documentation/swiftui/shapestyle/tint)
- [placeholder](/documentation/swiftui/shapestyle/placeholder)
- [link](/documentation/swiftui/shapestyle/link)
- [fill](/documentation/swiftui/shapestyle/fill)
- [windowBackground](/documentation/swiftui/shapestyle/windowbackground)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
