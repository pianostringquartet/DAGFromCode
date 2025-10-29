---
title: DisplayProxy
description: A type which provides information about display hardware.
source: https://developer.apple.com/documentation/swiftui/displayproxy
timestamp: 2025-10-29T00:10:16.934Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# DisplayProxy

**Available on:** macOS 15.0+

> A type which provides information about display hardware.

```swift
struct DisplayProxy
```

## Overview

You can use this type with your custom window layouts to size and position windows relative to a display’s bounds.

For example, your custom window layout can position a window 140 points from the bottom of the screen’s visible area:

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

## Instance Properties

- [bounds](/documentation/swiftui/displayproxy/bounds) The full dimensions of the display, including any space occupied by system interface elements.
- [safeAreaInsets](/documentation/swiftui/displayproxy/safeareainsets) The safe area inset of this display.
- [visibleRect](/documentation/swiftui/displayproxy/visiblerect) The portion of the display where it is safe to place windows.

## Positioning a window

- [defaultPosition(_:)](/documentation/swiftui/scene/defaultposition(_:))
- [WindowLevel](/documentation/swiftui/windowlevel)
- [windowLevel(_:)](/documentation/swiftui/scene/windowlevel(_:))
- [WindowLayoutRoot](/documentation/swiftui/windowlayoutroot)
- [WindowPlacement](/documentation/swiftui/windowplacement)
- [defaultWindowPlacement(_:)](/documentation/swiftui/scene/defaultwindowplacement(_:))
- [windowIdealPlacement(_:)](/documentation/swiftui/scene/windowidealplacement(_:))
- [WindowPlacementContext](/documentation/swiftui/windowplacementcontext)
- [WindowProxy](/documentation/swiftui/windowproxy)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
