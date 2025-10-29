---
title: WindowPlacement
description: A type which represents a preferred size and position for a window.
source: https://developer.apple.com/documentation/swiftui/windowplacement
timestamp: 2025-10-29T00:12:51.526Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# WindowPlacement

**Available on:** macOS 15.0+, visionOS 2.0+

> A type which represents a preferred size and position for a window.

```swift
struct WindowPlacement
```

## Overview

When using the `Scene.defaultWindowPlacement(_:)` modifier, you return an instance of a `WindowPlacement` in the closure you provide.

When constructing a window placement, many initial parameters are optional. Any value not specified will fall back to the scene’s default behavior and configuration for sizing and positioning it’s windows.

For example, you can use this to position a window 140 points from the bottom of the visible area of the screen:

```swift
Window("Status", id: "status") {
    StatusView()
}
.windowResizability(.contentSize)
.defaultWindowPlacement { content, context in
    let displayBounds = context.defaultDisplay.visibleRect
    let size = content.sizeThatFits(.unspecified)
    let position = CGPoint(
        x: displayBounds.midX - (size.width / 2),
        y: displayBounds.maxY - size.height - 140)
    return WindowPlacement(position: position, size: size)
}
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)

## Structures

- [WindowPlacement.Position](/documentation/swiftui/windowplacement/position) A semantic or positional value for the location of a window.

## Initializers

- [init(_:)](/documentation/swiftui/windowplacement/init(_:)) Creates a new window placement with an optional position.
- [init(_:size3D:)](/documentation/swiftui/windowplacement/init(_:size3d:)) Creates a new window placement with an optional position and 3D size. Depth is ignored on scenes that don’t support it.
- [init(_:size:)](/documentation/swiftui/windowplacement/init(_:size:)) Creates a new window placement with an absolute position and optional size.
- [init(_:width:height:)](/documentation/swiftui/windowplacement/init(_:width:height:)) Creates a new window placement with a display-relative position, with an optional width and height.
- [init(_:width:height:depth:)](/documentation/swiftui/windowplacement/init(_:width:height:depth:)) Creates a new window placement with an optional position and 3D size. Depth is ignored on scenes or platforms that don’t support it.
- [init(x:y:width:height:)](/documentation/swiftui/windowplacement/init(x:y:width:height:)) Creates a new window placement with an optional position and size.

## Positioning a window

- [defaultPosition(_:)](/documentation/swiftui/scene/defaultposition(_:))
- [WindowLevel](/documentation/swiftui/windowlevel)
- [windowLevel(_:)](/documentation/swiftui/scene/windowlevel(_:))
- [WindowLayoutRoot](/documentation/swiftui/windowlayoutroot)
- [defaultWindowPlacement(_:)](/documentation/swiftui/scene/defaultwindowplacement(_:))
- [windowIdealPlacement(_:)](/documentation/swiftui/scene/windowidealplacement(_:))
- [WindowPlacementContext](/documentation/swiftui/windowplacementcontext)
- [WindowProxy](/documentation/swiftui/windowproxy)
- [DisplayProxy](/documentation/swiftui/displayproxy)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
