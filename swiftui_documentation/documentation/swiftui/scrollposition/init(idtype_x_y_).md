---
title: init(idType:x:y:)
description: Creates a new scroll position to be scrolled to the provided x value.
source: https://developer.apple.com/documentation/swiftui/scrollposition/init(idtype:x:y:)
timestamp: 2025-10-29T00:13:32.160Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scrollposition](/documentation/swiftui/scrollposition)

**Initializer**

# init(idType:x:y:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Creates a new scroll position to be scrolled to the provided x value.

```swift
init(idType: (some Hashable & Sendable).Type = Never.self, x: CGFloat, y: CGFloat)
```

## Discussion

You can provide a type to the scroll position. This type should match the type of IDs associated to views in a scroll target layout. The scroll view will look for those views to update the value of the scroll position with.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
