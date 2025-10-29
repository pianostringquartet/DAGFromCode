---
title: init(_:image:content:primaryAction:)
description: Creates a menu with a custom primary action that generates its label from a localized string key.
source: https://developer.apple.com/documentation/swiftui/menu/init(_:image:content:primaryaction:)
timestamp: 2025-10-29T00:13:25.762Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [menu](/documentation/swiftui/menu)

**Initializer**

# init(_:image:content:primaryAction:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+

> Creates a menu with a custom primary action that generates its label from a localized string key.

```swift
nonisolated init(_ titleKey: LocalizedStringKey, image: ImageResource, @ViewBuilder content: () -> Content, primaryAction: @escaping () -> Void)
```

## Parameters

**titleKey**

The key for the link’s localized title, which describes the contents of the menu.



**image**

The name of the image resource to lookup.



**content**

A group of menu items.



**primaryAction**

The action to perform on primary interaction with the menu.



## Creating a menu with a primary action

- [init(_:content:primaryAction:)](/documentation/swiftui/menu/init(_:content:primaryaction:))
- [init(content:label:primaryAction:)](/documentation/swiftui/menu/init(content:label:primaryaction:))
- [init(_:systemImage:content:primaryAction:)](/documentation/swiftui/menu/init(_:systemimage:content:primaryaction:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
