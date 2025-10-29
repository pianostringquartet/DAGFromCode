---
title: onInteractiveResizeChange(_:)
description: Adds an action to perform when the enclosing window is being interactively resized.
source: https://developer.apple.com/documentation/swiftui/view/oninteractiveresizechange(_:)
timestamp: 2025-10-29T00:14:45.695Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onInteractiveResizeChange(_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Adds an action to perform when the enclosing window is being interactively resized.

```swift
nonisolated func onInteractiveResizeChange(_ action: @escaping (Bool) -> Void) -> some View
```

## Parameters

**action**

A closure to run when the state of the window’s interactive resize changes.



## Discussion

Use this modifier to adjust how your view behaves when a window is in the process of being resized by the user. The action provided to this modifier will be called when the resize action begins and ends.

For example, you can adjust the frame rate of a custom Metal renderer during interactive resize:

```swift
struct RootView: View {
    var renderer: MetalRenderer
    var body: some View {
        MetalRepresentable(renderer: renderer)
           .onInteractiveResizeChange { isResizing in
               // Let the renderer know the window is being actively
               // resized, so that it can adjust frame rate,
               // pause animations, etc.
               renderer.handleWindowResize(isResizing: isResizing)
           }
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
