---
title: init(_:systemImage:role:content:)
description: Creates a new tab that you can use in a tab view using a system image for the tab item’s image, and a localized string key label.
source: https://developer.apple.com/documentation/swiftui/tab/init(_:systemimage:role:content:)
timestamp: 2025-10-29T00:12:20.179Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tab](/documentation/swiftui/tab)

**Initializer**

# init(_:systemImage:role:content:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Creates a new tab that you can use in a tab view using a system image for the tab item’s image, and a localized string key label.

```swift
init(_ titleKey: LocalizedStringKey, systemImage: String, role: TabRole?, @ViewBuilder content: () -> Content) where Label == DefaultTabLabel
```

## Parameters

**titleKey**

The localized string key label for the tab’s tab item.



**role**

The role defining the semantic purpose of the tab.



**content**

The view content of the tab.



## Creating a tab with system symbol

- [init(_:systemImage:content:)](/documentation/swiftui/tab/init(_:systemimage:content:))
- [init(_:systemImage:value:content:)](/documentation/swiftui/tab/init(_:systemimage:value:content:))
- [init(_:systemImage:value:role:content:)](/documentation/swiftui/tab/init(_:systemimage:value:role:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
