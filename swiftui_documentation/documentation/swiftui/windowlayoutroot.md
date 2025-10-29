---
title: WindowLayoutRoot
description: A proxy which represents the root contents of a window.
source: https://developer.apple.com/documentation/swiftui/windowlayoutroot
timestamp: 2025-10-29T00:09:41.423Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# WindowLayoutRoot

**Available on:** macOS 15.0+, visionOS 2.0+

> A proxy which represents the root contents of a window.

```swift
struct WindowLayoutRoot
```

## Overview

This type acts like a proxy for the contents of the window defined by a SwiftUI [Scene](/documentation/swiftui/scene). The `Scene.defaultWindowPlacement(_:)` modifier receives an instance of this type, representing the contents of the window being created.

Use this proxy to get information about the window’s contents, like it’s size.

## Instance Methods

- [sizeThatFits(_:)](/documentation/swiftui/windowlayoutroot/sizethatfits(_:)) Asks the window’s content for its size.

## Positioning a window

- [defaultPosition(_:)](/documentation/swiftui/scene/defaultposition(_:))
- [WindowLevel](/documentation/swiftui/windowlevel)
- [windowLevel(_:)](/documentation/swiftui/scene/windowlevel(_:))
- [WindowPlacement](/documentation/swiftui/windowplacement)
- [defaultWindowPlacement(_:)](/documentation/swiftui/scene/defaultwindowplacement(_:))
- [windowIdealPlacement(_:)](/documentation/swiftui/scene/windowidealplacement(_:))
- [WindowPlacementContext](/documentation/swiftui/windowplacementcontext)
- [WindowProxy](/documentation/swiftui/windowproxy)
- [DisplayProxy](/documentation/swiftui/displayproxy)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
