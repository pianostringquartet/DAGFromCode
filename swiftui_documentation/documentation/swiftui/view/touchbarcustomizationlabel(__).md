---
title: touchBarCustomizationLabel(_:)
description: Sets a user-visible string that identifies the view’s functionality.
source: https://developer.apple.com/documentation/swiftui/view/touchbarcustomizationlabel(_:)
timestamp: 2025-10-29T00:12:59.339Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# touchBarCustomizationLabel(_:)

**Available on:** macOS 10.15+

> Sets a user-visible string that identifies the view’s functionality.

```swift
nonisolated func touchBarCustomizationLabel(_ label: Text) -> some View
```

## Parameters

**label**

A `Text` view containing the customization label.



## Return Value

A Touch Bar element with a set customization label.

## Discussion

This string is visible during user customization.

```swift
TextField("TouchBar Demo", text: $placeholder)
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .focusable()
    .touchBar {
        Button("♥️", action: selectHearts)
            .touchBarCustomizationLabel(Text("Hearts"))
        Button("♣️", action: selectClubs)
            .touchBarCustomizationLabel(Text("Clubs"))
        Button("♠️", action: selectSpades)
            .touchBarCustomizationLabel(Text("Spades"))
        Button("♦️", action: selectDiamonds)
            .touchBarCustomizationLabel(Text("Diamonds"))
    }
```



## Managing Touch Bar input

- [touchBar(content:)](/documentation/swiftui/view/touchbar(content:))
- [touchBar(_:)](/documentation/swiftui/view/touchbar(_:))
- [touchBarItemPrincipal(_:)](/documentation/swiftui/view/touchbaritemprincipal(_:))
- [touchBarItemPresence(_:)](/documentation/swiftui/view/touchbaritempresence(_:))
- [TouchBar](/documentation/swiftui/touchbar)
- [TouchBarItemPresence](/documentation/swiftui/touchbaritempresence)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
