---
title: init(value:role:content:)
description: Creates a new tab with a label inferred from the role.
source: https://developer.apple.com/documentation/swiftui/tab/init(value:role:content:)
timestamp: 2025-10-29T00:09:51.455Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tab](/documentation/swiftui/tab)

**Initializer**

# init(value:role:content:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Creates a new tab with a label inferred from the role.

```swift
nonisolated init(value: Value, role: TabRole?, @ViewBuilder content: () -> Content) where Label == DefaultTabLabel
```

## Parameters

**value**

The `selection` value which selects this tab.



**role**

The `role` defining the semantic purpose of the tab.



**content**

The view content of the tab.



## Creating a tab

- [init(content:)](/documentation/swiftui/tab/init(content:))
- [init(value:content:)](/documentation/swiftui/tab/init(value:content:))
- [init(role:content:)](/documentation/swiftui/tab/init(role:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
