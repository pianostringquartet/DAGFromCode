---
title: init(value:role:content:label:)
description: Creates a new tab with a label that you can use in a tab view.
source: https://developer.apple.com/documentation/swiftui/tab/init(value:role:content:label:)
timestamp: 2025-10-29T00:09:29.593Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tab](/documentation/swiftui/tab)

**Initializer**

# init(value:role:content:label:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Creates a new tab with a label that you can use in a tab view.

```swift
nonisolated init(value: Value, role: TabRole?, @ViewBuilder content: () -> Content, @ViewBuilder label: () -> Label)
```

## Parameters

**value**

The `selection` value which selects this tab.



**role**

The role defining the semantic purpose of the tab.



**content**

The view content of the tab.



**label**

The label for the tab’s tab item.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
