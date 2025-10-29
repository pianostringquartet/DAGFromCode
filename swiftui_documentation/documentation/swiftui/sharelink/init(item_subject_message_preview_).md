---
title: init(item:subject:message:preview:)
description: Creates an instance that presents the share interface.
source: https://developer.apple.com/documentation/swiftui/sharelink/init(item:subject:message:preview:)
timestamp: 2025-10-29T00:09:30.518Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [sharelink](/documentation/swiftui/sharelink)

**Initializer**

# init(item:subject:message:preview:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+, watchOS 9.0+

> Creates an instance that presents the share interface.

```swift
nonisolated init<I>(item: I, subject: Text? = nil, message: Text? = nil, preview: SharePreview<PreviewImage, PreviewIcon>) where Data == CollectionOfOne<I>, I : Transferable
```

## Parameters

**item**

The item to share.



**subject**

A title for the item to show when sharing to activities that support a subject field.



**message**

A description of the item to show when sharing to activities that support a message field. Activities may support attributed text or HTML strings.



**preview**

A representation of the item to render in a preview.



## Discussion

Use this initializer when you want the system-standard appearance for `ShareLink`.

## Sharing an item with a preview

- [init(_:item:subject:message:preview:)](/documentation/swiftui/sharelink/init(_:item:subject:message:preview:))
- [init(item:subject:message:preview:label:)](/documentation/swiftui/sharelink/init(item:subject:message:preview:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
