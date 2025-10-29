---
title: init(_:content:)
description: Creates a menu that generates its label from a localized string key.
source: https://developer.apple.com/documentation/swiftui/menu/init(_:content:)
timestamp: 2025-10-29T00:15:26.568Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [menu](/documentation/swiftui/menu)

**Initializer**

# init(_:content:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 17.0+, visionOS 1.0+

> Creates a menu that generates its label from a localized string key.

```swift
nonisolated init(_ titleKey: LocalizedStringKey, @ViewBuilder content: () -> Content) where Label == Text
```

## Parameters

**titleKey**

The key for the link’s localized title, which describes the contents of the menu.



**content**

A group of menu items.



## Creating a menu from content

- [init(content:label:)](/documentation/swiftui/menu/init(content:label:))
- [init(_:image:content:)](/documentation/swiftui/menu/init(_:image:content:))
- [init(_:systemImage:content:)](/documentation/swiftui/menu/init(_:systemimage:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
