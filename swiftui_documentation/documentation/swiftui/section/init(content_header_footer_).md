---
title: init(content:header:footer:)
description: Creates a section with a header, footer, and the provided section content.
source: https://developer.apple.com/documentation/swiftui/section/init(content:header:footer:)
timestamp: 2025-10-29T00:12:29.274Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [section](/documentation/swiftui/section)

**Initializer**

# init(content:header:footer:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a section with a header, footer, and the provided section content.

```swift
init(@ViewBuilder content: () -> Content, @ViewBuilder header: () -> Parent, @ViewBuilder footer: () -> Footer)
```

## Parameters

**content**

The section’s content.



**header**

A view to use as the section’s header.



**footer**

A view to use as the section’s footer.



## Adding headers and footers

- [init(content:header:)](/documentation/swiftui/section/init(content:header:))
- [init(content:footer:)](/documentation/swiftui/section/init(content:footer:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
