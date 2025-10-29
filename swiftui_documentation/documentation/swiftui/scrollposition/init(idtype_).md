---
title: init(idType:)
description: Creates a new automatic scroll position.
source: https://developer.apple.com/documentation/swiftui/scrollposition/init(idtype:)
timestamp: 2025-10-29T00:14:22.259Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scrollposition](/documentation/swiftui/scrollposition)

**Initializer**

# init(idType:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Creates a new automatic scroll position.

```swift
init(idType: (some Hashable & Sendable).Type = Never.self)
```

## Discussion

You can provide a type to the scroll position. This type should match the type of IDs associated to views in a scroll target layout. The scroll view will look for those views to update the value of the scroll position with.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
