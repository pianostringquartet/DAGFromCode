---
title: windowIdealPlacement(_:)
description: Provides a function which determines a placement to use when windows of a scene zoom.
source: https://developer.apple.com/documentation/swiftui/scene/windowidealplacement(_:)
timestamp: 2025-10-29T00:15:16.056Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# windowIdealPlacement(_:)

**Available on:** macOS 15.0+

> Provides a function which determines a placement to use when windows of a scene zoom.

```swift
nonisolated func windowIdealPlacement(_ makePlacement: @escaping (WindowLayoutRoot, WindowPlacementContext) -> WindowPlacement) -> some Scene
```

## Parameters

**makePlacement**

A closure which returns the ideal placement for a window derived from this scene.



## Discussion

The default behavior will size the window to its maximum size, or the bounds of the display, whichever is smaller. By overriding this behavior, you can provide a size that is appropriate for the contents of your window.

For example, you can provide a placement with a height equal to the display bounds, and a width based on your content’s ideal width:

```swift
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowIdealPlacement { content, context in
            let displayBounds = context.defaultDisplay.visibleRect
            let proposal = ProposedViewSize(
                width: nil, height: displayBounds.height)
            let contentSize = content.sizeThatFits(proposal)
            return .init(
                width: contentSize.width,
                height: contentSize.height)
        }
    }
}
```

## Positioning a window

- [defaultPosition(_:)](/documentation/swiftui/scene/defaultposition(_:))
- [WindowLevel](/documentation/swiftui/windowlevel)
- [windowLevel(_:)](/documentation/swiftui/scene/windowlevel(_:))
- [WindowLayoutRoot](/documentation/swiftui/windowlayoutroot)
- [WindowPlacement](/documentation/swiftui/windowplacement)
- [defaultWindowPlacement(_:)](/documentation/swiftui/scene/defaultwindowplacement(_:))
- [WindowPlacementContext](/documentation/swiftui/windowplacementcontext)
- [WindowProxy](/documentation/swiftui/windowproxy)
- [DisplayProxy](/documentation/swiftui/displayproxy)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
