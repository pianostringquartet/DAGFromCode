---
title: init(items:subject:message:)
description: Creates an instance that presents the share interface.
source: https://developer.apple.com/documentation/swiftui/sharelink/init(items:subject:message:)
timestamp: 2025-10-29T00:12:28.908Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [sharelink](/documentation/swiftui/sharelink)

**Initializer**

# init(items:subject:message:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+, watchOS 9.0+

> Creates an instance that presents the share interface.

```swift
nonisolated init(items: Data, subject: Text? = nil, message: Text? = nil)
```

## Parameters

**items**

The items to share.



**subject**

A title for the items to show when sharing to activities that support a subject field.



**message**

A description of the items to show when sharing to activities that support a message field. Activities may support attributed text or HTML strings.



## Discussion

Use this initializer when you want the system-standard appearance for `ShareLink`.

## Sharing items

- [init(_:items:subject:message:)](/documentation/swiftui/sharelink/init(_:items:subject:message:))
- [init(items:subject:message:label:)](/documentation/swiftui/sharelink/init(items:subject:message:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
