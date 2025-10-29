---
title: touchBar(_:)
description: Sets the Touch Bar content to be shown in the Touch Bar when applicable.
source: https://developer.apple.com/documentation/swiftui/view/touchbar(_:)
timestamp: 2025-10-29T00:11:47.978Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# touchBar(_:)

**Available on:** macOS 10.15+

> Sets the Touch Bar content to be shown in the Touch Bar when applicable.

```swift
nonisolated func touchBar<Content>(_ touchBar: TouchBar<Content>) -> some View where Content : View
```

## Parameters

**touchBar**

A collection of views that the Touch Bar displays.



## Return Value

A view that contains the Touch Bar content.

## Discussion

Use [touchBar(_:)](/documentation/swiftui/view/touchbar(_:)) to provide a static set of views that are displayed by the Touch Bar when appropriate, depending on whether the view has focus.

The example below provides Touch Bar content in-line, that creates the content the Touch Bar displays:

```swift
func selectHearts() {/* ... */ }
func selectClubs() { /* ... */ }
func selectSpades() { /* ... */ }
func selectDiamonds() { /* ... */ }

TextField("TouchBar Demo", text: $placeholder)
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .focusable()
    .touchBar {
        Button("♥️ - Hearts", action: selectHearts)
        Button("♣️ - Clubs", action: selectClubs)
        Button("♠️ - Spades", action: selectSpades)
        Button("♦️ - Diamonds", action: selectDiamonds)
    }
```



## Managing Touch Bar input

- [touchBar(content:)](/documentation/swiftui/view/touchbar(content:))
- [touchBarItemPrincipal(_:)](/documentation/swiftui/view/touchbaritemprincipal(_:))
- [touchBarCustomizationLabel(_:)](/documentation/swiftui/view/touchbarcustomizationlabel(_:))
- [touchBarItemPresence(_:)](/documentation/swiftui/view/touchbaritempresence(_:))
- [TouchBar](/documentation/swiftui/touchbar)
- [TouchBarItemPresence](/documentation/swiftui/touchbaritempresence)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
