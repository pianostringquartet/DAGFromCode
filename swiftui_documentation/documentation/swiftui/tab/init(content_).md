---
title: init(content:)
description: Creates a new tab that you can use in a tab view, with an empty label.
source: https://developer.apple.com/documentation/swiftui/tab/init(content:)
timestamp: 2025-10-29T00:09:22.853Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tab](/documentation/swiftui/tab)

**Initializer**

# init(content:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Creates a new tab that you can use in a tab view, with an empty label.

```swift
init(@ViewBuilder content: () -> Content) where Label == EmptyView
```

## Parameters

**content**

The view content of the tab.



## Creating a tab

- [init(value:content:)](/documentation/swiftui/tab/init(value:content:))
- [init(role:content:)](/documentation/swiftui/tab/init(role:content:))
- [init(value:role:content:)](/documentation/swiftui/tab/init(value:role:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
