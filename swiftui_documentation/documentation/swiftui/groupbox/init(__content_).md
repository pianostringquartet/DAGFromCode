---
title: init(_:content:)
description: Creates a group box with the provided view content and title.
source: https://developer.apple.com/documentation/swiftui/groupbox/init(_:content:)
timestamp: 2025-10-29T00:09:31.467Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [groupbox](/documentation/swiftui/groupbox)

**Initializer**

# init(_:content:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, visionOS 1.0+

> Creates a group box with the provided view content and title.

```swift
nonisolated init(_ titleKey: LocalizedStringKey, @ViewBuilder content: () -> Content)
```

## Parameters

**titleKey**

The key for the group box’s title, which describes the content of the group box.



**content**

A [View Builder](/documentation/swiftui/viewbuilder) that produces the content for the group box.



## Creating a group box

- [init(content:)](/documentation/swiftui/groupbox/init(content:))
- [init(content:label:)](/documentation/swiftui/groupbox/init(content:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
