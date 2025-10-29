---
title: place(at:anchor:proposal:)
description: Assigns a position and proposed size to the subview.
source: https://developer.apple.com/documentation/swiftui/layoutsubview/place(at:anchor:proposal:)
timestamp: 2025-10-29T00:12:19.608Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [layoutsubview](/documentation/swiftui/layoutsubview)

**Instance Method**

# place(at:anchor:proposal:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Assigns a position and proposed size to the subview.

```swift
func place(at position: CGPoint, anchor: UnitPoint = .topLeading, proposal: ProposedViewSize)
```

## Parameters

**position**

The place where the anchor of the subview should appear in its container view, relative to container’s bounds.



**anchor**

The unit point on the subview that appears at `position`. You can use a built-in point, like [center](/documentation/swiftui/unitpoint/center), or you can create a custom [Unit Point](/documentation/swiftui/unitpoint).



**proposal**

A proposed size for the subview. In SwiftUI, views choose their own size, but can take a size proposal from their parent view into account when doing so.



## Discussion

Call this method from your implementation of the [Layout](/documentation/swiftui/layout) protocol’s [placeSubviews(in:proposal:subviews:cache:)](/documentation/swiftui/layout/placesubviews(in:proposal:subviews:cache:)) method for each subview arranged by the layout. Provide a position within the container’s bounds where the subview should appear, and an anchor that indicates which part of the subview appears at that point.

Include a proposed size that the subview can take into account when sizing itself. To learn the subview’s size for a given proposal before calling this method, you can call the [dimensions(in:)](/documentation/swiftui/layoutsubview/dimensions(in:)) or [sizeThatFits(_:)](/documentation/swiftui/layoutsubview/sizethatfits(_:)) method on the subview with the same proposal. That enables you to know subview sizes before committing to subview positions.

> [!IMPORTANT]
> Call this method only from within your [Layout](/documentation/swiftui/layout) type’s implementation of the [placeSubviews(in:proposal:subviews:cache:)](/documentation/swiftui/layout/placesubviews(in:proposal:subviews:cache:)) method.

If you call this method more than once for a subview, the last call takes precedence. If you don’t call this method for a subview, the subview appears at the center of its layout container and uses the layout container’s size proposal.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
