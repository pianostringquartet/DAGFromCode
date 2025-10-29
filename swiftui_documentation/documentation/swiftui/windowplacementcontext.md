---
title: WindowPlacementContext
description: A type which represents contextual information used for sizing and positioning windows.
source: https://developer.apple.com/documentation/swiftui/windowplacementcontext
timestamp: 2025-10-29T00:10:52.214Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# WindowPlacementContext

**Available on:** macOS 15.0+, visionOS 2.0+

> A type which represents contextual information used for sizing and positioning windows.

```swift
struct WindowPlacementContext
```

## Overview

The placement context provides information to be used when providing a new placement via the closure provided to the `defaultWindowPlacement(_:)` modifier.

## Instance Properties

- [defaultDisplay](/documentation/swiftui/windowplacementcontext/defaultdisplay) The display on which new windows will be presented by default.
- [windows](/documentation/swiftui/windowplacementcontext/windows) The list of current active scenes

## Positioning a window

- [defaultPosition(_:)](/documentation/swiftui/scene/defaultposition(_:))
- [WindowLevel](/documentation/swiftui/windowlevel)
- [windowLevel(_:)](/documentation/swiftui/scene/windowlevel(_:))
- [WindowLayoutRoot](/documentation/swiftui/windowlayoutroot)
- [WindowPlacement](/documentation/swiftui/windowplacement)
- [defaultWindowPlacement(_:)](/documentation/swiftui/scene/defaultwindowplacement(_:))
- [windowIdealPlacement(_:)](/documentation/swiftui/scene/windowidealplacement(_:))
- [WindowProxy](/documentation/swiftui/windowproxy)
- [DisplayProxy](/documentation/swiftui/displayproxy)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
