---
title: automatic
description: The default menu style, based on the menu’s context.
source: https://developer.apple.com/documentation/swiftui/menustyle/automatic
timestamp: 2025-10-29T00:14:39.233Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [menustyle](/documentation/swiftui/menustyle)

**Type Property**

# automatic

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 17.0+, visionOS 1.0+

> The default menu style, based on the menu’s context.

```swift
@MainActor @preconcurrency static var automatic: DefaultMenuStyle { get }
```

## Discussion

The default menu style can vary by platform. By default, macOS uses the bordered button style.

If you create a menu inside a container, the style resolves to the recommended style for menus inside that container for that specific platform. For example, a menu nested within another menu will resolve to a submenu:

```swift
Menu("Edit") {
    Menu("Arrange") {
        Button("Bring to Front", action: moveSelectionToFront)
        Button("Send to Back", action: moveSelectionToBack)
    }
    Button("Delete", action: deleteSelection)
}
```

You can override a menu’s style. To apply the default style to a menu, or to a view that contains a menu, use the [menuStyle(_:)](/documentation/swiftui/view/menustyle(_:)) modifier.

## Getting built-in menu styles

- [button](/documentation/swiftui/menustyle/button)
- [borderedButton](/documentation/swiftui/menustyle/borderedbutton)
- [borderlessButton](/documentation/swiftui/menustyle/borderlessbutton)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
