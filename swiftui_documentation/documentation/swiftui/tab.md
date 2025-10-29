---
title: Tab
description: The content for a tab and the tab’s associated tab item in a tab view.
source: https://developer.apple.com/documentation/swiftui/tab
timestamp: 2025-10-29T00:09:38.991Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# Tab

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> The content for a tab and the tab’s associated tab item in a tab view.

```swift
struct Tab<Value, Content, Label>
```

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [TabContent](/documentation/swiftui/tabcontent)

## Creating a tab

- [init(content:)](/documentation/swiftui/tab/init(content:)) Creates a new tab that you can use in a tab view, with an empty label.
- [init(value:content:)](/documentation/swiftui/tab/init(value:content:)) Creates a new tab that you can use in a tab view, with an empty label.
- [init(role:content:)](/documentation/swiftui/tab/init(role:content:)) Creates a new tab that you can use in a tab view, with an empty label.
- [init(value:role:content:)](/documentation/swiftui/tab/init(value:role:content:)) Creates a new tab with a label inferred from the role.

## Creating a tab with label

- [init(content:label:)](/documentation/swiftui/tab/init(content:label:)) Creates a new tab with a label that you can use in a tab view.

## Creating a tab with system symbol

- [init(_:systemImage:content:)](/documentation/swiftui/tab/init(_:systemimage:content:)) Creates a new tab that you can use in a tab view using a system image for the tab item’s image, and a localized string key label.
- [init(_:systemImage:value:content:)](/documentation/swiftui/tab/init(_:systemimage:value:content:)) Creates a tab that the tab view presents when the tab view’s selection matches the tab’s value using a system image for the tab’s tab item image, with a localized string key label.
- [init(_:systemImage:role:content:)](/documentation/swiftui/tab/init(_:systemimage:role:content:)) Creates a new tab that you can use in a tab view using a system image for the tab item’s image, and a localized string key label.
- [init(_:systemImage:value:role:content:)](/documentation/swiftui/tab/init(_:systemimage:value:role:content:)) Creates a tab that the tab view presents when the tab view’s selection matches the tab’s value using a system image for the tab’s tab item image, with a localized string key label.

## Creating a tab with image

- [init(_:image:content:)](/documentation/swiftui/tab/init(_:image:content:)) Creates a new tab that you can use in a tab view, with a localized string key label.
- [init(_:image:value:content:)](/documentation/swiftui/tab/init(_:image:value:content:)) Creates a tab that the tab view presents when the tab view’s selection matches the tab’s value, with a localized string key label.
- [init(_:image:role:content:)](/documentation/swiftui/tab/init(_:image:role:content:)) Creates a new tab that you can use in a tab view, with a localized string key label.
- [init(_:image:value:role:content:)](/documentation/swiftui/tab/init(_:image:value:role:content:)) Creates a tab that the tab view presents when the tab view’s selection matches the tab’s value, with a localized string key label.

## Supporting types

- [DefaultTabLabel](/documentation/swiftui/defaulttablabel) The default label to use for a tab or tab section.

## Initializers

- [init(role:content:label:)](/documentation/swiftui/tab/init(role:content:label:)) Creates a new tab with a label that you can use in a tab view.
- [init(value:content:label:)](/documentation/swiftui/tab/init(value:content:label:)) Creates a new tab with a label that you can use in a tab view.
- [init(value:role:content:label:)](/documentation/swiftui/tab/init(value:role:content:label:)) Creates a new tab with a label that you can use in a tab view.

## Presenting views in tabs

- [Enhancing your app’s content with tab navigation](/documentation/swiftui/enhancing-your-app-content-with-tab-navigation)
- [TabView](/documentation/swiftui/tabview)
- [TabRole](/documentation/swiftui/tabrole)
- [TabSection](/documentation/swiftui/tabsection)
- [tabViewStyle(_:)](/documentation/swiftui/view/tabviewstyle(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
