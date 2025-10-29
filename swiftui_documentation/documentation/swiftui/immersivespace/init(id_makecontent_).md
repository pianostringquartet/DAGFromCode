---
title: init(id:makeContent:)
description: Creates the immersive space associated with the specified identifier.
source: https://developer.apple.com/documentation/swiftui/immersivespace/init(id:makecontent:)
timestamp: 2025-10-29T00:09:37.005Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [immersivespace](/documentation/swiftui/immersivespace)

**Initializer**

# init(id:makeContent:)

**Available on:** visionOS 1.0+

> Creates the immersive space associated with the specified identifier.

```swift
init(id: String, @ImmersiveSpaceContentBuilder makeContent: @escaping () -> Content) where Data == Never
```

## Parameters

**id**

A string that uniquely identifies the immersive space. Ensure that identifiers are unique among the immersive spaces in your app.



## Discussion

The space uses the specified content builder to form the content.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
