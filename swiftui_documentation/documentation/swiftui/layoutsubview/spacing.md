---
title: spacing
description: The subviews’s preferred spacing values.
source: https://developer.apple.com/documentation/swiftui/layoutsubview/spacing
timestamp: 2025-10-29T00:09:57.429Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [layoutsubview](/documentation/swiftui/layoutsubview)

**Instance Property**

# spacing

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> The subviews’s preferred spacing values.

```swift
var spacing: ViewSpacing { get }
```

## Discussion

This [View Spacing](/documentation/swiftui/viewspacing) instance indicates how much space a subview in a custom layout prefers to have between it and the next view. It contains preferences for all edges, and might take into account the type of both this and the adjacent view. If your [Layout](/documentation/swiftui/layout) type places subviews based on spacing preferences, use this instance to compute a distance between this subview and the next. See [placeSubviews(in:proposal:subviews:cache:)](/documentation/swiftui/layout/placesubviews(in:proposal:subviews:cache:)) for an example.

You can also merge this instance with instances from other subviews to construct a new instance that’s suitable for the subviews’ container. See [spacing(subviews:cache:)](/documentation/swiftui/layout/spacing(subviews:cache:)).

## Getting subview characteristics

- [dimensions(in:)](/documentation/swiftui/layoutsubview/dimensions(in:))
- [sizeThatFits(_:)](/documentation/swiftui/layoutsubview/sizethatfits(_:))
- [priority](/documentation/swiftui/layoutsubview/priority)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
