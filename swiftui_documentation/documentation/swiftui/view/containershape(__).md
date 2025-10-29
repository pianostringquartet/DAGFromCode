---
title: containerShape(_:)
description: Sets the container shape to use for any container relative shape or concentric rectangle within this view.
source: https://developer.apple.com/documentation/swiftui/view/containershape(_:)
timestamp: 2025-10-29T00:14:12.507Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# containerShape(_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Sets the container shape to use for any container relative shape or concentric rectangle within this view.

```swift
nonisolated func containerShape(_ shape: some RoundedRectangularShape) -> some View
```

## Discussion

The example below defines a view that shows its content with a rounded rectangle background and the same container shape. Any [Container Relative Shape](/documentation/swiftui/containerrelativeshape) within the `content` matches the rounded rectangle shape from this container inset as appropriate. Any [Concentric Rectangle](/documentation/swiftui/concentricrectangle) within the `content` will match the corners to be concentric to the container corners.

```swift
struct PlatterContainer<Content: View> : View {
    @ViewBuilder var content: Content
    var body: some View {
        content
            .padding()
            .containerShape(shape)
            .background(shape.fill(.background))
    }
    var shape: RoundedRectangle { RoundedRectangle(cornerRadius: 20) }
}
```

> [!NOTE]
> [containerShape(_:)](/documentation/swiftui/view/containershape(_:)-qn9q)

## Setting a container shape

- [InsettableShape](/documentation/swiftui/insettableshape)
- [ContainerRelativeShape](/documentation/swiftui/containerrelativeshape)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
