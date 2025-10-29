---
title: init(content:label:primaryAction:)
description: Creates a menu with a custom primary action and custom label.
source: https://developer.apple.com/documentation/swiftui/menu/init(content:label:primaryaction:)
timestamp: 2025-10-29T00:14:19.509Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [menu](/documentation/swiftui/menu)

**Initializer**

# init(content:label:primaryAction:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 17.0+, visionOS 1.0+

> Creates a menu with a custom primary action and custom label.

```swift
nonisolated init(@ViewBuilder content: () -> Content, @ViewBuilder label: () -> Label, primaryAction: @escaping () -> Void)
```

## Parameters

**content**

A group of menu items.



**label**

A view describing the content of the menu.



**primaryAction**

The action to perform on primary interaction with the menu.



## Creating a menu with a primary action

- [init(_:content:primaryAction:)](/documentation/swiftui/menu/init(_:content:primaryaction:))
- [init(_:image:content:primaryAction:)](/documentation/swiftui/menu/init(_:image:content:primaryaction:))
- [init(_:systemImage:content:primaryAction:)](/documentation/swiftui/menu/init(_:systemimage:content:primaryaction:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
