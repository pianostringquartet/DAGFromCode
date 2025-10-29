---
title: visible
description: Prefer to show window toolbar when the window is in full screen mode.
source: https://developer.apple.com/documentation/swiftui/windowtoolbarfullscreenvisibility/visible
timestamp: 2025-10-29T00:10:06.634Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [windowtoolbarfullscreenvisibility](/documentation/swiftui/windowtoolbarfullscreenvisibility)

**Type Property**

# visible

**Available on:** macOS 15.0+

> Prefer to show window toolbar when the window is in full screen mode.

```swift
static let visible: WindowToolbarFullScreenVisibility
```

## Discussion

This has no effect if the toolbar is completely hidden, i.e. setting the visibility to `hidden` for `windowToolbar` placements using [toolbarVisibility(_:for:)](/documentation/swiftui/view/toolbarvisibility(_:for:)) will cause the toolbar to remain completely hidden, even in full screen.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
