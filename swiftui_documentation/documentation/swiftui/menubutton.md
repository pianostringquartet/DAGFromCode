---
title: MenuButton
description: A button that displays a menu containing a list of choices when pressed.
source: https://developer.apple.com/documentation/swiftui/menubutton
timestamp: 2025-10-29T00:12:33.884Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# MenuButton

**Available on:** macOS 10.15+

> A button that displays a menu containing a list of choices when pressed.

```swift
struct MenuButton<Label, Content> where Label : View, Content : View
```

## Conforms To

- [View](/documentation/swiftui/view)

## Creating a menu button

- [init(_:content:)](/documentation/swiftui/menubutton/init(_:content:)) Creates a menu button with the specified localized title and content.
- [init(label:content:)](/documentation/swiftui/menubutton/init(label:content:)) Creates a menu button with the specified label and content.

## Styling a menu button

- [menuButtonStyle(_:)](/documentation/swiftui/view/menubuttonstyle(_:)) Sets the style for menu buttons within this view.
- [MenuButtonStyle](/documentation/swiftui/menubuttonstyle) A custom specification for the appearance and interaction of a menu button.

## Deprecated types

- [PullDownButton](/documentation/swiftui/pulldownbutton)
- [ContextMenu](/documentation/swiftui/contextmenu)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
