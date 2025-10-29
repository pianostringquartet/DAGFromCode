---
title: init(_:image:value:content:)
description: Creates a tab that the tab view presents when the tab view’s selection matches the tab’s value, with a localized string key label.
source: https://developer.apple.com/documentation/swiftui/tab/init(_:image:value:content:)
timestamp: 2025-10-29T00:13:08.731Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tab](/documentation/swiftui/tab)

**Initializer**

# init(_:image:value:content:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Creates a tab that the tab view presents when the tab view’s selection matches the tab’s value, with a localized string key label.

```swift
nonisolated init(_ titleKey: LocalizedStringKey, image: String, value: Value, @ViewBuilder content: () -> Content) where Label == DefaultTabLabel
```

## Parameters

**titleKey**

The localized string key label for the tab’s tab item.



**image**

The image for the tab’s tab item.



**value**

The `selection` value which selects this tab.



**content**

The view content of the tab.



## Creating a tab with image

- [init(_:image:content:)](/documentation/swiftui/tab/init(_:image:content:))
- [init(_:image:role:content:)](/documentation/swiftui/tab/init(_:image:role:content:))
- [init(_:image:value:role:content:)](/documentation/swiftui/tab/init(_:image:value:role:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
