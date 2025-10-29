---
title: init(content:label:)
description: Creates a group box with the provided label and view content.
source: https://developer.apple.com/documentation/swiftui/groupbox/init(content:label:)
timestamp: 2025-10-29T00:13:37.154Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [groupbox](/documentation/swiftui/groupbox)

**Initializer**

# init(content:label:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 10.15+, visionOS 1.0+

> Creates a group box with the provided label and view content.

```swift
init(@ViewBuilder content: () -> Content, @ViewBuilder label: () -> Label)
```

## Parameters

**content**

A [View Builder](/documentation/swiftui/viewbuilder) that produces the content for the group box.



**label**

A [View Builder](/documentation/swiftui/viewbuilder) that produces a label for the group box.



## Creating a group box

- [init(content:)](/documentation/swiftui/groupbox/init(content:))
- [init(_:content:)](/documentation/swiftui/groupbox/init(_:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
