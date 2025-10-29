---
title: init(id:anchor:)
description: Creates a new scroll position to a view with a provided identity value.
source: https://developer.apple.com/documentation/swiftui/scrollposition/init(id:anchor:)
timestamp: 2025-10-29T00:14:26.209Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scrollposition](/documentation/swiftui/scrollposition)

**Initializer**

# init(id:anchor:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Creates a new scroll position to a view with a provided identity value.

```swift
init(id: some Hashable & Sendable, anchor: UnitPoint? = nil)
```

## Discussion

The type of the ID indicates the type of ID of views within a scroll target layout the scroll view should look for.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
