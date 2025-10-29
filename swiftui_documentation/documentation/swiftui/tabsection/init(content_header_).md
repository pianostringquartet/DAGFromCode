---
title: init(content:header:)
description: Creates a section with a header and the provided section content.
source: https://developer.apple.com/documentation/swiftui/tabsection/init(content:header:)
timestamp: 2025-10-29T00:10:39.675Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tabsection](/documentation/swiftui/tabsection)

**Initializer**

# init(content:header:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Creates a section with a header and the provided section content.

```swift
init(@TabContentBuilder<SelectionValue> content: () -> Content, @ViewBuilder header: () -> Header) where Header : View, Footer == EmptyView
```

## Parameters

**content**

The section’s content.



**header**

A view to use as the section’s header.



## Creating a tab section

- [init(content:)](/documentation/swiftui/tabsection/init(content:))
- [init(_:content:)](/documentation/swiftui/tabsection/init(_:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
