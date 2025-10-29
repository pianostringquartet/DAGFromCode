---
title: init(id:for:content:)
description: Creates the remote immersive space associated with an identifier for a specified type of presented data.
source: https://developer.apple.com/documentation/swiftui/remoteimmersivespace/init(id:for:content:)
timestamp: 2025-10-29T00:15:27.199Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [remoteimmersivespace](/documentation/swiftui/remoteimmersivespace)

**Initializer**

# init(id:for:content:)

**Available on:** macOS 26.0+

> Creates the remote immersive space associated with an identifier for a specified type of presented data.

```swift
nonisolated init<C>(id: String, for type: Data.Type, @CompositorContentBuilder content: @escaping (Binding<Data?>) -> C) where Content == CompositorContentBuilder.Content<C>, C : CompositorContent
```

## Parameters

**id**

A string that uniquely identifies the immersive space. Ensure that identifiers are unique among the immersive spaces in your app.



**type**

The type of presented data this immersive space accepts.



**content**

A compositor content builder that defines the content for each instance of the immersive space. The closure receives a binding to the value that you pass to the [open Immersive Space](/documentation/swiftui/environmentvalues/openimmersivespace) action when you call that action to open an immersive space. The system automatically persists and restores the value of this binding during state restoration.



## Discussion

The space uses the specified content builder to form the content. Your app invokes this initializer when it presents a value of the specified `type` using the [open Immersive Space](/documentation/swiftui/environmentvalues/openimmersivespace) action.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
