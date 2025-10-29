---
title: init(content:)
description: Creates a remote immersive space.
source: https://developer.apple.com/documentation/swiftui/remoteimmersivespace/init(content:)
timestamp: 2025-10-29T00:11:55.404Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [remoteimmersivespace](/documentation/swiftui/remoteimmersivespace)

**Initializer**

# init(content:)

**Available on:** macOS 26.0+

> Creates a remote immersive space.

```swift
nonisolated init<C>(@CompositorContentBuilder content: @escaping () -> C) where Content == CompositorContentBuilder.Content<C>, Data == Never, C : CompositorContent
```

## Parameters

**content**

A compositor content builder that defines the content of the space.



## Discussion

The space uses the specified content builder to form the content.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
