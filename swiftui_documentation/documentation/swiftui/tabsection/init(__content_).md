---
title: init(_:content:)
description: Creates a section with the provided content.
source: https://developer.apple.com/documentation/swiftui/tabsection/init(_:content:)
timestamp: 2025-10-29T00:12:11.136Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tabsection](/documentation/swiftui/tabsection)

**Initializer**

# init(_:content:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Creates a section with the provided content.

```swift
init(_ titleKey: LocalizedStringKey, @TabContentBuilder<SelectionValue> content: () -> Content) where Header == Text, Footer == EmptyView
```

## Parameters

**titleKey**

The localized string key label for the section’s header.



**content**

The section’s content.



## Creating a tab section

- [init(content:)](/documentation/swiftui/tabsection/init(content:))
- [init(content:header:)](/documentation/swiftui/tabsection/init(content:header:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
