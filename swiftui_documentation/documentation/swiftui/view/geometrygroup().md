---
title: geometryGroup()
description: Isolates the geometry (e.g. position and size) of the view from its parent view.
source: https://developer.apple.com/documentation/swiftui/view/geometrygroup()
timestamp: 2025-10-29T00:10:49.787Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# geometryGroup()

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Isolates the geometry (e.g. position and size) of the view from its parent view.

```swift
nonisolated func geometryGroup() -> some View
```

## Discussion

By default SwiftUI views push position and size changes down through the view hierarchy, so that only views that draw something (known as leaf views) apply the current animation to their frame rectangle. However in some cases this coalescing behavior can give undesirable results; inserting a geometry group can correct that. A group acts as a barrier between the parent view and its subviews, forcing the position and size values to be resolved and animated by the parent, before being passed down to each subview.

The example below shows one use of this function: ensuring that the member views of each row in the stack apply (and animate as) a single geometric transform from their ancestor view, rather than letting the effects of the ancestor views be applied separately to each leaf view. If the members of `ItemView` may be added and removed at different times the group ensures that they stay locked together as animations are applied.

```swift
VStack {
    ForEach(items) { item in
        ItemView(item: item)
            .geometryGroup()
    }
}
```

Returns: a new view whose geometry is isolated from that of its parent view.

## Synchronizing geometries

- [matchedGeometryEffect(id:in:properties:anchor:isSource:)](/documentation/swiftui/view/matchedgeometryeffect(id:in:properties:anchor:issource:))
- [MatchedGeometryProperties](/documentation/swiftui/matchedgeometryproperties)
- [GeometryEffect](/documentation/swiftui/geometryeffect)
- [Namespace](/documentation/swiftui/namespace)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
