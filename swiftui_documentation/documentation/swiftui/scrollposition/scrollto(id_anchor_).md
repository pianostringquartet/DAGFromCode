---
title: scrollTo(id:anchor:)
description: Scrolls the position of the scroll view to a view with a identity value and anchor you provide.
source: https://developer.apple.com/documentation/swiftui/scrollposition/scrollto(id:anchor:)
timestamp: 2025-10-29T00:12:21.513Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scrollposition](/documentation/swiftui/scrollposition)

**Instance Method**

# scrollTo(id:anchor:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Scrolls the position of the scroll view to a view with a identity value and anchor you provide.

```swift
mutating func scrollTo(id: some Hashable & Sendable, anchor: UnitPoint? = nil)
```

## Discussion

Inform the scroll view of which layout it should look for view’s with the identity value you provide using the `View/scrollTargetLayout()` modifier.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
