---
title: init(_:image:content:)
description: Creates a menu that generates its label from a localized string key and image resource.
source: https://developer.apple.com/documentation/swiftui/menu/init(_:image:content:)
timestamp: 2025-10-29T00:12:44.800Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [menu](/documentation/swiftui/menu)

**Initializer**

# init(_:image:content:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+

> Creates a menu that generates its label from a localized string key and image resource.

```swift
nonisolated init(_ titleKey: LocalizedStringKey, image: ImageResource, @ViewBuilder content: () -> Content)
```

## Parameters

**titleKey**

The key for the link’s localized title, which describes the contents of the menu.



**image**

The name of the image resource to lookup.



**content**

A group of menu items.



## Creating a menu from content

- [init(_:content:)](/documentation/swiftui/menu/init(_:content:))
- [init(content:label:)](/documentation/swiftui/menu/init(content:label:))
- [init(_:systemImage:content:)](/documentation/swiftui/menu/init(_:systemimage:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
