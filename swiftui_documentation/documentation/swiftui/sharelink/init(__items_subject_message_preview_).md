---
title: init(_:items:subject:message:preview:)
description: Creates an instance, with a custom label, that presents the share interface.
source: https://developer.apple.com/documentation/swiftui/sharelink/init(_:items:subject:message:preview:)
timestamp: 2025-10-29T00:13:04.197Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [sharelink](/documentation/swiftui/sharelink)

**Initializer**

# init(_:items:subject:message:preview:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+, watchOS 9.0+

> Creates an instance, with a custom label, that presents the share interface.

```swift
nonisolated init(_ title: Text, items: Data, subject: Text? = nil, message: Text? = nil, preview: @escaping (Data.Element) -> SharePreview<PreviewImage, PreviewIcon>)
```

## Parameters

**title**

The title of the share action.



**items**

The items to share.



**subject**

A title for the items to show when sharing to activities that support a subject field.



**message**

A description of the items to show when sharing to activities that support a message field. Activities may support attributed text or HTML strings.



**preview**

A closure that returns a representation of each item to render in a preview.



## Sharing items with a preview

- [init(items:subject:message:preview:)](/documentation/swiftui/sharelink/init(items:subject:message:preview:))
- [init(items:subject:message:preview:label:)](/documentation/swiftui/sharelink/init(items:subject:message:preview:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
