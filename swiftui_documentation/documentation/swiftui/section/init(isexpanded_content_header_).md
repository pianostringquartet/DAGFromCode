---
title: init(isExpanded:content:header:)
description: Creates a section with a header, the provided section content, and a binding representing the section’s expansion state.
source: https://developer.apple.com/documentation/swiftui/section/init(isexpanded:content:header:)
timestamp: 2025-10-29T00:15:16.767Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [section](/documentation/swiftui/section)

**Initializer**

# init(isExpanded:content:header:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates a section with a header, the provided section content, and a binding representing the section’s expansion state.

```swift
init(isExpanded: Binding<Bool>, @ViewBuilder content: () -> Content, @ViewBuilder header: () -> Parent)
```

## Parameters

**isExpanded**

A binding to a Boolean value that determines the section’s expansion state (expanded or collapsed).



**content**

The section’s content.



**header**

A view to use as the section’s header.



## Controlling collapsibility

- [init(_:isExpanded:content:)](/documentation/swiftui/section/init(_:isexpanded:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
