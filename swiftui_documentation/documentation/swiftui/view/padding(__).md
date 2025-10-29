---
title: padding(_:)
description: Adds a different padding amount to each edge of this view.
source: https://developer.apple.com/documentation/swiftui/view/padding(_:)
timestamp: 2025-10-29T00:12:16.249Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# padding(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Adds a different padding amount to each edge of this view.

```swift
nonisolated func padding(_ insets: EdgeInsets) -> some View
```

## Parameters

**insets**

An [Edge Insets](/documentation/swiftui/edgeinsets) instance that contains padding amounts for each edge.



## Return Value

A view that’s padded by different amounts on each edge.

## Discussion

Use this modifier to add a different amount of padding on each edge of a view:

```swift
VStack {
    Text("Text padded by different amounts on each edge.")
        .padding(EdgeInsets(top: 10, leading: 20, bottom: 40, trailing: 0))
        .border(.gray)
    Text("Unpadded text for comparison.")
        .border(.yellow)
}
```

The order in which you apply modifiers matters. The example above applies the padding before applying the border to ensure that the border encompasses the padded region:



To pad a view on specific edges with equal padding for all padded edges, use [padding(_:_:)](/documentation/swiftui/view/padding(_:_:)). To pad all edges of a view equally, use [padding(_:)](/documentation/swiftui/view/padding(_:)).

## Adding padding around a view

- [padding(_:_:)](/documentation/swiftui/view/padding(_:_:))
- [padding3D(_:)](/documentation/swiftui/view/padding3d(_:))
- [padding3D(_:_:)](/documentation/swiftui/view/padding3d(_:_:))
- [scenePadding(_:)](/documentation/swiftui/view/scenepadding(_:))
- [scenePadding(_:edges:)](/documentation/swiftui/view/scenepadding(_:edges:))
- [ScenePadding](/documentation/swiftui/scenepadding)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
