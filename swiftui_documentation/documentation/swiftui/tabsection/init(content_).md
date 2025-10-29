---
title: init(content:)
description: Creates a section with the provided section content.
source: https://developer.apple.com/documentation/swiftui/tabsection/init(content:)
timestamp: 2025-10-29T00:10:11.524Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tabsection](/documentation/swiftui/tabsection)

**Initializer**

# init(content:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Creates a section with the provided section content.

```swift
init(@TabContentBuilder<SelectionValue> content: () -> Content) where Header == EmptyView, Footer == EmptyView
```

## Parameters

**content**

The section’s content.



## Creating a tab section

- [init(_:content:)](/documentation/swiftui/tabsection/init(_:content:))
- [init(content:header:)](/documentation/swiftui/tabsection/init(content:header:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
