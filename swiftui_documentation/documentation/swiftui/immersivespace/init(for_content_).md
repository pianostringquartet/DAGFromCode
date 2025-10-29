---
title: init(for:content:)
description: Creates the immersive space for a specified type of presented data.
source: https://developer.apple.com/documentation/swiftui/immersivespace/init(for:content:)
timestamp: 2025-10-29T00:15:17.337Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [immersivespace](/documentation/swiftui/immersivespace)

**Initializer**

# init(for:content:)

**Available on:** visionOS 1.0+

> Creates the immersive space for a specified type of presented data.

```swift
init(for type: Data.Type, @ImmersiveSpaceContentBuilder content: @escaping (Binding<Data?>) -> Content)
```

## Parameters

**type**

The type of presented data this immersive space accepts.



**content**

An immersive space content builder that defines the content for each instance of the immersive space. The closure receives a binding to the value that you pass to the [open Immersive Space](/documentation/swiftui/environmentvalues/openimmersivespace) action when you call that action to open an immersive space. The system automatically persists and restores the value of this binding during state restoration.



## Discussion

The space uses the specified content builder to form the content. Your app invokes this initializer when it presents a value of the specified `type` using the [open Immersive Space](/documentation/swiftui/environmentvalues/openimmersivespace) action.

## Creating a data-driven immersive space

- [init(id:for:content:)](/documentation/swiftui/immersivespace/init(id:for:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
