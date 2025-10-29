---
title: init(content:)
description: Creates a tab view that uses a builder to create its tabs.
source: https://developer.apple.com/documentation/swiftui/tabview/init(content:)
timestamp: 2025-10-29T00:10:02.105Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tabview](/documentation/swiftui/tabview)

**Initializer**

# init(content:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Creates a tab view that uses a builder to create its tabs.

```swift
init<C>(@TabContentBuilder<Never> content: () -> C) where SelectionValue == Never, Content == TabContentBuilder<Never>.Content<C>, C : TabContent
```

## Parameters

**content**

The [Tab](/documentation/swiftui/tab) content.



## Creating a tab view

- [init(selection:content:)](/documentation/swiftui/tabview/init(selection:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
