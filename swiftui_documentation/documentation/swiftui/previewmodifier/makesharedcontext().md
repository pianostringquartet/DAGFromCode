---
title: makeSharedContext()
description: Create shared context to apply to previews. The context returned here will be cached and passed into the  method for every preview that applies a modifier of this type.
source: https://developer.apple.com/documentation/swiftui/previewmodifier/makesharedcontext()
timestamp: 2025-10-29T00:11:18.120Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [previewmodifier](/documentation/swiftui/previewmodifier)

**Type Method**

# makeSharedContext()

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Create shared context to apply to previews. The context returned here will be cached and passed into the  method for every preview that applies a modifier of this type.

```swift
@MainActor static func makeSharedContext() async throws -> Self.Context
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
