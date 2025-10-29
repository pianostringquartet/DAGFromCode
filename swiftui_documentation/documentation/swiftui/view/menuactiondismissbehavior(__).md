---
title: menuActionDismissBehavior(_:)
description: Tells a menu whether to dismiss after performing an action.
source: https://developer.apple.com/documentation/swiftui/view/menuactiondismissbehavior(_:)
timestamp: 2025-10-29T00:09:34.370Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# menuActionDismissBehavior(_:)

**Available on:** iOS 16.4+, iPadOS 16.4+, Mac Catalyst 16.4+, macOS 13.3+, tvOS 16.4+, visionOS 1.0+, watchOS 9.4+

> Tells a menu whether to dismiss after performing an action.

```swift
nonisolated func menuActionDismissBehavior(_ behavior: MenuActionDismissBehavior) -> some View
```

## Return Value

A view that has the specified menu dismissal behavior.

## Discussion

Use this modifier to control the dismissal behavior of a menu. In the example below, the menu doesn’t dismiss after someone chooses either the increase or decrease action:

```swift
Menu("Font size") {
    Button(action: increase) {
        Label("Increase", systemImage: "plus.magnifyingglass")
    }
    .menuActionDismissBehavior(.disabled)

    Button("Reset", action: reset)

    Button(action: decrease) {
        Label("Decrease", systemImage: "minus.magnifyingglass")
    }
    .menuActionDismissBehavior(.disabled)
}
```

You can use this modifier on any controls that present a menu, like a [Picker](/documentation/swiftui/picker) that uses the [menu](/documentation/swiftui/pickerstyle/menu) style or a [Control Group](/documentation/swiftui/controlgroup). For example, the code below creates a picker that disables dismissal when someone selects one of the options:

```swift
Picker("Flavor", selection: $selectedFlavor) {
    ForEach(Flavor.allCases) { flavor in
        Text(flavor.rawValue.capitalized)
            .tag(flavor)
    }
}
.pickerStyle(.menu)
.menuActionDismissBehavior(.disabled)
```

You can also use this modifier on context menus. The example below creates a context menu that stays presented after someone selects an action to run:

```swift
Text("Favorite Card Suit")
    .padding()
    .contextMenu {
        Button("♥️ - Hearts", action: increaseHeartsCount)
        Button("♣️ - Clubs", action: increaseClubsCount)
        Button("♠️ - Spades", action: increaseSpadesCount)
        Button("♦️ - Diamonds", action: increaseDiamondsCount)
    }
    .menuActionDismissBehavior(.disabled)
```

## Configuring menu dismissal

- [MenuActionDismissBehavior](/documentation/swiftui/menuactiondismissbehavior)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
