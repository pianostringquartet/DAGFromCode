---
title: touchBarItemPrincipal(_:)
description: Sets principal views that have special significance to this Touch Bar.
source: https://developer.apple.com/documentation/swiftui/view/touchbaritemprincipal(_:)
timestamp: 2025-10-29T00:13:24.097Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# touchBarItemPrincipal(_:)

**Available on:** macOS 10.15+

> Sets principal views that have special significance to this Touch Bar.

```swift
nonisolated func touchBarItemPrincipal(_ principal: Bool = true) -> some View
```

## Parameters

**principal**

A Boolean value that indicates whether to display this view prominently in the Touch Bar compared to other views.



## Return Value

A Touch Bar view with one element centered in the Touch Bar row.

## Discussion

Use `touchBarItemPrincipal(_:)` to designate a view as a significant view in the Touch Bar. Currently, that view will be placed in the center of the row.

The example below sets the last button as the principal button for the Touch Bar view.

```swift
let touchBarItems = TouchBar(id: "myBarItems") {
    Button("♣️", action: {})
    Button("♥️", action: {})
    Button("♠️", action: {})
    Button("♦️", action: {})
       .touchBarItemPrincipal(true)
}

TextField("TouchBar Demo", text: $placeholder)
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .focusable()
    .touchBar(touchBarItems)
```

> [!NOTE]
> Multiple visible bars may each specify a principal view, but the system only honors one of them.



## Managing Touch Bar input

- [touchBar(content:)](/documentation/swiftui/view/touchbar(content:))
- [touchBar(_:)](/documentation/swiftui/view/touchbar(_:))
- [touchBarCustomizationLabel(_:)](/documentation/swiftui/view/touchbarcustomizationlabel(_:))
- [touchBarItemPresence(_:)](/documentation/swiftui/view/touchbaritempresence(_:))
- [TouchBar](/documentation/swiftui/touchbar)
- [TouchBarItemPresence](/documentation/swiftui/touchbaritempresence)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
