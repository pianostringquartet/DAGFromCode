---
title: init(content:)
description: Creates an immersive space.
source: https://developer.apple.com/documentation/swiftui/immersivespace/init(content:)
timestamp: 2025-10-29T00:12:02.980Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [immersivespace](/documentation/swiftui/immersivespace)

**Initializer**

# init(content:)

**Available on:** visionOS 1.0+

> Creates an immersive space.

```swift
init(@ImmersiveSpaceContentBuilder content: @escaping () -> Content) where Data == Never
```

## Parameters

**content**

An immersive space content builder that defines the content of the space.



## Discussion

The space uses the specified content builder to form the content.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
