---
title: MenuStyleConfiguration
description: A configuration of a menu.
source: https://developer.apple.com/documentation/swiftui/menustyleconfiguration
timestamp: 2025-10-29T00:15:26.776Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# MenuStyleConfiguration

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 17.0+, visionOS 1.0+

> A configuration of a menu.

```swift
struct MenuStyleConfiguration
```

## Overview

Use the [init(_:)](/documentation/swiftui/menu/init(_:)) initializer of [Menu](/documentation/swiftui/menu) to create an instance using the current menu style, which you can modify to create a custom style.

For example, the following code creates a new, custom style that adds a red border to the current menu style:

```swift
struct RedBorderMenuStyle: MenuStyle {
    func makeBody(configuration: Configuration) -> some View {
        Menu(configuration)
            .border(Color.red)
    }
}
```

## Setting the label and content

- [MenuStyleConfiguration.Label](/documentation/swiftui/menustyleconfiguration/label) A type-erased label of a menu.
- [MenuStyleConfiguration.Content](/documentation/swiftui/menustyleconfiguration/content) A type-erased content of a menu.

## Styling menus

- [menuStyle(_:)](/documentation/swiftui/view/menustyle(_:))
- [MenuStyle](/documentation/swiftui/menustyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
