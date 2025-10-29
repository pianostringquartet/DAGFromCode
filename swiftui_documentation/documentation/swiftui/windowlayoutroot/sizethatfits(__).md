---
title: sizeThatFits(_:)
description: Asks the window’s content for its size.
source: https://developer.apple.com/documentation/swiftui/windowlayoutroot/sizethatfits(_:)
timestamp: 2025-10-29T00:10:06.350Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [windowlayoutroot](/documentation/swiftui/windowlayoutroot)

**Instance Method**

# sizeThatFits(_:)

**Available on:** macOS 15.0+, visionOS 2.0+

> Asks the window’s content for its size.

```swift
func sizeThatFits(_ proposal: ProposedViewSize) -> CGSize
```

## Parameters

**proposal**

A proposed size for the subview. In SwiftUI, views choose their own size, but can take a size proposal from their parent view into account when doing so.



## Return Value

The size that the content chooses for itself, given the proposal from its container view.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
