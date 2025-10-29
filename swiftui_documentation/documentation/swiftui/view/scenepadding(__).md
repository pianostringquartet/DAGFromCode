---
title: scenePadding(_:)
description: Adds padding to the specified edges of this view using an amount that’s appropriate for the current scene.
source: https://developer.apple.com/documentation/swiftui/view/scenepadding(_:)
timestamp: 2025-10-29T00:11:36.059Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# scenePadding(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Adds padding to the specified edges of this view using an amount that’s appropriate for the current scene.

```swift
nonisolated func scenePadding(_ edges: Edge.Set = .all) -> some View
```

## Parameters

**edges**

The set of edges along which to pad this view.



## Return Value

A view that’s padded on specified edges by a scene-appropriate amount.

## Discussion

Use this modifier to add a scene-appropriate amount of padding to a view. Specify either a single edge value from [Set](/documentation/swiftui/edge/set), or an [Option Set](/documentation/Swift/OptionSet) that describes the edges to pad.

In macOS, use scene padding to produce the recommended spacing around the root view of a window. In watchOS, use scene padding to align elements of your user interface with top level elements, like the title of a navigation view. For example, compare the effects of different kinds of padding on text views presented inside a [Navigation View](/documentation/swiftui/navigationview) in watchOS:

```swift
VStack(alignment: .leading, spacing: 10) {
    Text("Scene padding")
        .scenePadding(.horizontal)
        .border(.red) // Border added for reference.
    Text("Regular padding")
        .padding(.horizontal)
        .border(.green)
    Text("Text with no padding")
        .border(.blue)
    Button("Button") { }
}
.navigationTitle("Hello World")
```

The text with scene padding automatically aligns with the title, unlike the text that uses the default padding or the text without padding:



Scene padding in watchOS also ensures that your content avoids the curved edges of a device like Apple Watch Series 7. In other platforms, scene padding produces the same default padding that you get from the [padding(_:_:)](/documentation/swiftui/view/padding(_:_:)) modifier.

> [!IMPORTANT]
> Scene padding doesn’t pad the top and bottom edges of a view in watchOS, even if you specify those edges as part of the input. For example, if you specify [vertical](/documentation/swiftui/edge/set/vertical) instead of [horizontal](/documentation/swiftui/edge/set/horizontal) in the example above, the modifier would have no effect in watchOS. It does, however, apply to all the edges that you specify in other platforms.

## Adding padding around a view

- [padding(_:)](/documentation/swiftui/view/padding(_:))
- [padding(_:_:)](/documentation/swiftui/view/padding(_:_:))
- [padding3D(_:)](/documentation/swiftui/view/padding3d(_:))
- [padding3D(_:_:)](/documentation/swiftui/view/padding3d(_:_:))
- [scenePadding(_:edges:)](/documentation/swiftui/view/scenepadding(_:edges:))
- [ScenePadding](/documentation/swiftui/scenepadding)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
