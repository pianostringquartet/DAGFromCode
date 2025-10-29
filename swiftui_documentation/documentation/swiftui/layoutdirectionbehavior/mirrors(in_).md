---
title: LayoutDirectionBehavior.mirrors(in:)
description: A behavior that mirrors when the layout direction has the specified value.
source: https://developer.apple.com/documentation/swiftui/layoutdirectionbehavior/mirrors(in:)
timestamp: 2025-10-29T00:11:54.440Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [layoutdirectionbehavior](/documentation/swiftui/layoutdirectionbehavior)

**Case**

# LayoutDirectionBehavior.mirrors(in:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A behavior that mirrors when the layout direction has the specified value.

```swift
case mirrors(in: LayoutDirection)
```

## Discussion

If you develop your view or shape in an LTR context, you can use `.mirrors(in: .rightToLeft)` (which is equivalent to `.mirrors`) to mirror your content when the layout direction is RTL (and keep the original version in LTR). If you developer in an RTL context, you can use `.mirrors(in: .leftToRight)` to mirror your content when the layout direction is LTR (and keep the original version in RTL).

## Getting behaviors

- [LayoutDirectionBehavior.fixed](/documentation/swiftui/layoutdirectionbehavior/fixed)
- [mirrors](/documentation/swiftui/layoutdirectionbehavior/mirrors)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
