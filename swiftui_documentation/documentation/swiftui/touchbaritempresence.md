---
title: TouchBarItemPresence
description: Options that affect user customization of the Touch Bar.
source: https://developer.apple.com/documentation/swiftui/touchbaritempresence
timestamp: 2025-10-29T00:10:56.377Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Enumeration**

# TouchBarItemPresence

**Available on:** macOS 10.15+

> Options that affect user customization of the Touch Bar.

```swift
enum TouchBarItemPresence
```

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting presence options

- [TouchBarItemPresence.default(_:)](/documentation/swiftui/touchbaritempresence/default(_:)) The Touch Bar view is visible by default, but can be removed during customization.
- [TouchBarItemPresence.optional(_:)](/documentation/swiftui/touchbaritempresence/optional(_:)) The Touch Bar view isn’t visible by default, but appears in the customization palette.
- [TouchBarItemPresence.required(_:)](/documentation/swiftui/touchbaritempresence/required(_:)) The Touch Bar view is visible by default and cannot be removed during customization.

## Managing Touch Bar input

- [touchBar(content:)](/documentation/swiftui/view/touchbar(content:))
- [touchBar(_:)](/documentation/swiftui/view/touchbar(_:))
- [touchBarItemPrincipal(_:)](/documentation/swiftui/view/touchbaritemprincipal(_:))
- [touchBarCustomizationLabel(_:)](/documentation/swiftui/view/touchbarcustomizationlabel(_:))
- [touchBarItemPresence(_:)](/documentation/swiftui/view/touchbaritempresence(_:))
- [TouchBar](/documentation/swiftui/touchbar)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
