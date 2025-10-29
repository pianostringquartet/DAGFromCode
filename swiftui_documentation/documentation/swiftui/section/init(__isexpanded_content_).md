---
title: init(_:isExpanded:content:)
description: Creates a section with the provided section content.
source: https://developer.apple.com/documentation/swiftui/section/init(_:isexpanded:content:)
timestamp: 2025-10-29T00:12:33.699Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [section](/documentation/swiftui/section)

**Initializer**

# init(_:isExpanded:content:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates a section with the provided section content.

```swift
init(_ titleKey: LocalizedStringKey, isExpanded: Binding<Bool>, @ViewBuilder content: () -> Content)
```

## Parameters

**titleKey**

The key for the section’s localized title, which describes the contents of the section.



**isExpanded**

A binding to a Boolean value that determines the section’s expansion state (expanded or collapsed).



**content**

The section’s content.



## Controlling collapsibility

- [init(isExpanded:content:header:)](/documentation/swiftui/section/init(isexpanded:content:header:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
