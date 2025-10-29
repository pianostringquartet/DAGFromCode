---
title: visualEffect(_:)
description: Applies effects to this view, while providing access to layout information through a geometry proxy.
source: https://developer.apple.com/documentation/swiftui/view/visualeffect(_:)
timestamp: 2025-10-29T00:12:17.523Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# visualEffect(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Applies effects to this view, while providing access to layout information through a geometry proxy.

```swift
nonisolated func visualEffect(_ effect: @escaping (EmptyVisualEffect, GeometryProxy) -> some VisualEffect) -> some View
```

## Parameters

**effect**

A closure that returns the effect to be applied. The first argument provided to the closure is a placeholder representing this view. The second argument is a `GeometryProxy`.



## Return Value

A view with the effect applied.

## Discussion

You return new effects by calling functions on the first argument provided to the `effect` closure. In this example, `ContentView` is offset by its own size, causing its top left corner to appear where the bottom right corner was originally located:

```swift
ContentView()
    .visualEffect { content, geometryProxy in
        content.offset(geometryProxy.size)
    }
```

## Applying effects based on geometry

- [visualEffect3D(_:)](/documentation/swiftui/view/visualeffect3d(_:))
- [VisualEffect](/documentation/swiftui/visualeffect)
- [EmptyVisualEffect](/documentation/swiftui/emptyvisualeffect)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
