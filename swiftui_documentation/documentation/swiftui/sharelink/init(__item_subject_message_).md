---
title: init(_:item:subject:message:)
description: Creates an instance, with a custom label, that presents the share interface.
source: https://developer.apple.com/documentation/swiftui/sharelink/init(_:item:subject:message:)
timestamp: 2025-10-29T00:12:57.454Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [sharelink](/documentation/swiftui/sharelink)

**Initializer**

# init(_:item:subject:message:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+, watchOS 9.0+

> Creates an instance, with a custom label, that presents the share interface.

```swift
nonisolated init(_ title: Text, item: String, subject: Text? = nil, message: Text? = nil) where Data == CollectionOfOne<String>
```

## Parameters

**title**

The title of the share action.



**item**

The item to share.



**subject**

A title for the item to show when sharing to activities that support a subject field.



**message**

A description of the item to show when sharing to activities that support a message field. Activities may support attributed text or HTML strings.



## Sharing an item

- [init(item:subject:message:)](/documentation/swiftui/sharelink/init(item:subject:message:))
- [init(item:subject:message:label:)](/documentation/swiftui/sharelink/init(item:subject:message:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
