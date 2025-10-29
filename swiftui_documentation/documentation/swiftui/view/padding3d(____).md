---
title: padding3D(_:_:)
description: Pads this view using the edge insets you specify.
source: https://developer.apple.com/documentation/swiftui/view/padding3d(_:_:)
timestamp: 2025-10-29T00:12:54.724Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# padding3D(_:_:)

**Available on:** visionOS 1.0+

> Pads this view using the edge insets you specify.

```swift
nonisolated func padding3D(_ edges: Edge3D.Set = .all, _ length: CGFloat? = nil) -> some View
```

## Parameters

**edges**

The set of edges along which to inset this view.



**length**

The amount to inset this view on each edge. If `nil`, the amount is the system default amount.



## Return Value

A view that pads this view using edge the insets you specify.

## Adding padding around a view

- [padding(_:)](/documentation/swiftui/view/padding(_:))
- [padding(_:_:)](/documentation/swiftui/view/padding(_:_:))
- [padding3D(_:)](/documentation/swiftui/view/padding3d(_:))
- [scenePadding(_:)](/documentation/swiftui/view/scenepadding(_:))
- [scenePadding(_:edges:)](/documentation/swiftui/view/scenepadding(_:edges:))
- [ScenePadding](/documentation/swiftui/scenepadding)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
