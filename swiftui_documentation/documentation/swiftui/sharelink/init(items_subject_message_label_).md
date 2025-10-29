---
title: init(items:subject:message:label:)
description: Creates an instance that presents the share interface.
source: https://developer.apple.com/documentation/swiftui/sharelink/init(items:subject:message:label:)
timestamp: 2025-10-29T00:12:08.404Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [sharelink](/documentation/swiftui/sharelink)

**Initializer**

# init(items:subject:message:label:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+, watchOS 9.0+

> Creates an instance that presents the share interface.

```swift
nonisolated init(items: Data, subject: Text? = nil, message: Text? = nil, @ViewBuilder label: () -> Label)
```

## Parameters

**items**

The items to share.



**subject**

A title for the items to show when sharing to activities that support a subject field.



**message**

A description of the items to show when sharing to activities that support a message field. Activities may support attributed text or HTML strings.



**label**

A view builder that produces a label that describes the share action.



## Sharing items

- [init(items:subject:message:)](/documentation/swiftui/sharelink/init(items:subject:message:))
- [init(_:items:subject:message:)](/documentation/swiftui/sharelink/init(_:items:subject:message:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
