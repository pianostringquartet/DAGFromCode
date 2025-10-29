---
title: visualEffect3D(_:)
description: Applies effects to this view, while providing access to layout information through a 3D geometry proxy.
source: https://developer.apple.com/documentation/swiftui/view/visualeffect3d(_:)
timestamp: 2025-10-29T00:15:21.763Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# visualEffect3D(_:)

**Available on:** visionOS 1.0+

> Applies effects to this view, while providing access to layout information through a 3D geometry proxy.

```swift
nonisolated func visualEffect3D(_ effect: @escaping (EmptyVisualEffect, GeometryProxy3D) -> some VisualEffect) -> some View
```

## Parameters

**effect**

A closure that returns the effect to be applied. The first argument provided to the closure is a placeholder representing this view. The second argument is a `GeometryProxy3D`.



## Return Value

A view with the effect applied.

## Discussion

You return new effects by calling functions on the first argument provided to the `effect` closure. In this example, `ContentView` is offset in Z by its own depth, causing its back face to appear where the front face of the view was originally located:

```swift
ContentView()
    .visualEffect3D { content, geometryProxy in
        content.offset(z: geometryProxy.size.depth)
    }
```

## Applying effects based on geometry

- [visualEffect(_:)](/documentation/swiftui/view/visualeffect(_:))
- [VisualEffect](/documentation/swiftui/visualeffect)
- [EmptyVisualEffect](/documentation/swiftui/emptyvisualeffect)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
