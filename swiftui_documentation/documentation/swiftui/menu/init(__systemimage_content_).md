---
title: init(_:systemImage:content:)
description: Creates a menu that generates its label from a localized string key and system image.
source: https://developer.apple.com/documentation/swiftui/menu/init(_:systemimage:content:)
timestamp: 2025-10-29T00:13:53.887Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [menu](/documentation/swiftui/menu)

**Initializer**

# init(_:systemImage:content:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 17.0+, visionOS 1.0+

> Creates a menu that generates its label from a localized string key and system image.

```swift
nonisolated init(_ titleKey: LocalizedStringKey, systemImage: String, @ViewBuilder content: () -> Content)
```

## Parameters

**titleKey**

The key for the link’s localized title, which describes the contents of the menu.



**systemImage**

The name of the image resource to lookup.



**content**

A group of menu items.



## Creating a menu from content

- [init(_:content:)](/documentation/swiftui/menu/init(_:content:))
- [init(content:label:)](/documentation/swiftui/menu/init(content:label:))
- [init(_:image:content:)](/documentation/swiftui/menu/init(_:image:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
