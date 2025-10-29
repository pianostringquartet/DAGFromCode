---
title: init(for:content:)
description: Creates the remote immersive space for a specified type of presented data.
source: https://developer.apple.com/documentation/swiftui/remoteimmersivespace/init(for:content:)
timestamp: 2025-10-29T00:13:25.415Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [remoteimmersivespace](/documentation/swiftui/remoteimmersivespace)

**Initializer**

# init(for:content:)

**Available on:** macOS 26.0+

> Creates the remote immersive space for a specified type of presented data.

```swift
nonisolated init<C>(for type: Data.Type, @CompositorContentBuilder content: @escaping (Binding<Data?>) -> C) where Content == CompositorContentBuilder.Content<C>, C : CompositorContent
```

## Parameters

**type**

The type of presented data this immersive space accepts.



**content**

A compositor content builder that defines the content for each instance of the immersive space. The closure receives a binding to the value that you pass to the [open Immersive Space](/documentation/swiftui/environmentvalues/openimmersivespace) action when you call that action to open an immersive space. The system automatically persists and restores the value of this binding during state restoration.



## Discussion

The space uses the specified content builder to form the content. Your app invokes this initializer when it presents a value of the specified `type` using the [open Immersive Space](/documentation/swiftui/environmentvalues/openimmersivespace) action.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
