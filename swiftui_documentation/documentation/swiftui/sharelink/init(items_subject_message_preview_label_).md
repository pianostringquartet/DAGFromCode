---
title: init(items:subject:message:preview:label:)
description: Creates an instance that presents the share interface.
source: https://developer.apple.com/documentation/swiftui/sharelink/init(items:subject:message:preview:label:)
timestamp: 2025-10-29T00:14:37.226Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [sharelink](/documentation/swiftui/sharelink)

**Initializer**

# init(items:subject:message:preview:label:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+, watchOS 9.0+

> Creates an instance that presents the share interface.

```swift
init(items: Data, subject: Text? = nil, message: Text? = nil, preview: @escaping (Data.Element) -> SharePreview<PreviewImage, PreviewIcon>, @ViewBuilder label: () -> Label)
```

## Parameters

**items**

The items to share.



**subject**

A title for the items to show when sharing to activities that support a subject field.



**message**

A description of the items to show when sharing to activities that support a message field. Activities may support attributed text or HTML strings.



**preview**

A closure that returns a representation of each item to render in a preview.



**label**

A view builder that produces a label that describes the share action.



## Sharing items with a preview

- [init(items:subject:message:preview:)](/documentation/swiftui/sharelink/init(items:subject:message:preview:))
- [init(_:items:subject:message:preview:)](/documentation/swiftui/sharelink/init(_:items:subject:message:preview:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
