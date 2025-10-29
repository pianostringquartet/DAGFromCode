---
title: init(id:content:)
description: Creates the remote immersive space associated with the specified identifier.
source: https://developer.apple.com/documentation/swiftui/remoteimmersivespace/init(id:content:)
timestamp: 2025-10-29T00:14:00.916Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [remoteimmersivespace](/documentation/swiftui/remoteimmersivespace)

**Initializer**

# init(id:content:)

**Available on:** macOS 26.0+

> Creates the remote immersive space associated with the specified identifier.

```swift
nonisolated init<C>(id: String, @CompositorContentBuilder content: @escaping () -> C) where Content == CompositorContentBuilder.Content<C>, Data == Never, C : CompositorContent
```

## Parameters

**id**

A string that uniquely identifies the immersive space. Ensure that identifiers are unique among the immersive spaces in your app.



**content**

An compositor content builder that defines the content of the space.



## Discussion

The space uses the specified content builder to form the content.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
