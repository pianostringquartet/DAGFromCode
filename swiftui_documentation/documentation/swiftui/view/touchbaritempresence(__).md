---
title: touchBarItemPresence(_:)
description: Sets the behavior of the user-customized view.
source: https://developer.apple.com/documentation/swiftui/view/touchbaritempresence(_:)
timestamp: 2025-10-29T00:15:20.656Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# touchBarItemPresence(_:)

**Available on:** macOS 10.15+

> Sets the behavior of the user-customized view.

```swift
nonisolated func touchBarItemPresence(_ presence: TouchBarItemPresence) -> some View
```

## Parameters

**presence**

One of the allowed [Touch Bar Item Presence](/documentation/swiftui/touchbaritempresence) descriptions.



## Return Value

A trait that describes the behavior for this Touch Bar view.

## Discussion

Use `touchBarItemPresence(_:)` to define the visibility requirements of a particular Touch Bar view during customization by the user.

Touch Bar views may be:

- `.required`: not allowed to be removed by the user.
- `.default`: shown by default prior to user customization, but removable.
- `.optional`: not visible by default, but can be added through the customization palette.

Each [Touch Bar Item Presence](/documentation/swiftui/touchbaritempresence) must be initialized with a string that is a globally unique identifier for this item.

In the example below, all of the Touch Bar items are visible in the Touch Bar by default, except for the “Clubs” item. It’s set to `.optional` but is configurable by the user:

```swift
TextField("TouchBar Demo", text: $placeholder)
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .focusable()
    .touchBar {
        Button("♥️", action: selectHearts)
            .touchBarItemPresence(.required("heartsKey"))
        Button("♣️", action: selectClubs)
            .touchBarItemPresence(.optional("clubsKey"))
        Button("♠️", action: selectSpades)
            .touchBarItemPresence(.required("spadesKey"))
        Button("♦️", action: selectDiamonds)
            .touchBarItemPresence(.required("diamondsKey"))
}
```



## Managing Touch Bar input

- [touchBar(content:)](/documentation/swiftui/view/touchbar(content:))
- [touchBar(_:)](/documentation/swiftui/view/touchbar(_:))
- [touchBarItemPrincipal(_:)](/documentation/swiftui/view/touchbaritemprincipal(_:))
- [touchBarCustomizationLabel(_:)](/documentation/swiftui/view/touchbarcustomizationlabel(_:))
- [TouchBar](/documentation/swiftui/touchbar)
- [TouchBarItemPresence](/documentation/swiftui/touchbaritempresence)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
