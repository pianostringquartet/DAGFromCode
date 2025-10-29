---
title: onHover
description: Hide the window toolbar in full screen mode by default. It will reveal itself when the mouse moves into the area occupied by the menu bar.
source: https://developer.apple.com/documentation/swiftui/windowtoolbarfullscreenvisibility/onhover
timestamp: 2025-10-29T00:11:04.100Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [windowtoolbarfullscreenvisibility](/documentation/swiftui/windowtoolbarfullscreenvisibility)

**Type Property**

# onHover

**Available on:** macOS 15.0+

> Hide the window toolbar in full screen mode by default. It will reveal itself when the mouse moves into the area occupied by the menu bar.

```swift
static let onHover: WindowToolbarFullScreenVisibility
```

## Discussion

This has no effect if the toolbar is completely hidden, i.e. setting the visibility to `hidden` for `windowToolbar` placements using [toolbarVisibility(_:for:)](/documentation/swiftui/view/toolbarvisibility(_:for:)) will cause the toolbar to remain completely hidden, even in full screen.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
