---
title: TouchBar
description: A container for a view that you can show in the Touch Bar.
source: https://developer.apple.com/documentation/swiftui/touchbar
timestamp: 2025-10-29T00:12:30.576Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# TouchBar

**Available on:** macOS 10.15+

> A container for a view that you can show in the Touch Bar.

```swift
struct TouchBar<Content> where Content : View
```

## Creating a Touch Bar view

- [init(content:)](/documentation/swiftui/touchbar/init(content:)) Creates a non-customizable Touch Bar view container.
- [init(id:content:)](/documentation/swiftui/touchbar/init(id:content:)) Creates a customizable Touch Bar view container with a globally unique identifier.

## Managing Touch Bar input

- [touchBar(content:)](/documentation/swiftui/view/touchbar(content:))
- [touchBar(_:)](/documentation/swiftui/view/touchbar(_:))
- [touchBarItemPrincipal(_:)](/documentation/swiftui/view/touchbaritemprincipal(_:))
- [touchBarCustomizationLabel(_:)](/documentation/swiftui/view/touchbarcustomizationlabel(_:))
- [touchBarItemPresence(_:)](/documentation/swiftui/view/touchbaritempresence(_:))
- [TouchBarItemPresence](/documentation/swiftui/touchbaritempresence)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
