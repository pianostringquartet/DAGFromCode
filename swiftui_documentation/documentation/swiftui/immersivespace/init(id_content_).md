---
title: init(id:content:)
description: Creates the immersive space associated with the specified identifier.
source: https://developer.apple.com/documentation/swiftui/immersivespace/init(id:content:)
timestamp: 2025-10-29T00:10:00.052Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [immersivespace](/documentation/swiftui/immersivespace)

**Initializer**

# init(id:content:)

**Available on:** visionOS 1.0+

> Creates the immersive space associated with the specified identifier.

```swift
init(id: String, @ImmersiveSpaceContentBuilder content: () -> Content) where Data == Never
```

## Parameters

**id**

A string that uniquely identifies the immersive space. Ensure that identifiers are unique among the immersive spaces in your app.



**content**

An immersive space content builder that defines the content of the space.



## Discussion

The space uses the specified content builder to form the content.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
