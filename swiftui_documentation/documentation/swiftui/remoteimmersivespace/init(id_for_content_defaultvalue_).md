---
title: init(id:for:content:defaultValue:)
description: Creates the remote immersive space associated with an identifier for a specified type of presented data, and a default value, if the data is not set.
source: https://developer.apple.com/documentation/swiftui/remoteimmersivespace/init(id:for:content:defaultvalue:)
timestamp: 2025-10-29T00:14:05.745Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [remoteimmersivespace](/documentation/swiftui/remoteimmersivespace)

**Initializer**

# init(id:for:content:defaultValue:)

**Available on:** macOS 26.0+

> Creates the remote immersive space associated with an identifier for a specified type of presented data, and a default value, if the data is not set.

```swift
nonisolated init<C>(id: String, for type: Data.Type = Data.self, @CompositorContentBuilder content: @escaping (Binding<Data>) -> C, defaultValue: @escaping () -> Data) where Content == CompositorContentBuilder.Content<C>, C : CompositorContent
```

## Parameters

**id**

A string that uniquely identifies the immersive space. Ensure that identifiers are unique among the immersive spaces in your app.



**type**

The type of presented data this immersive space accepts.



**content**

A compositor content builder that defines the content for each instance of the immersive space. The closure receives a binding to the value that you pass to the [open Immersive Space](/documentation/swiftui/environmentvalues/openimmersivespace) action when you call that action to open an immersive space. The system automatically persists and restores the value of this binding during state restoration.



**defaultValue**

A closure that returns a value that SwiftUI presents when it doesn’t receive one from you, like when you call the [open Immersive Space](/documentation/swiftui/environmentvalues/openimmersivespace) action without providing a value.



## Discussion

The space uses the specified content builder to form the content. Your app invokes this initializer when it presents a value of the specified `type` using the [open Immersive Space](/documentation/swiftui/environmentvalues/openimmersivespace) action.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
