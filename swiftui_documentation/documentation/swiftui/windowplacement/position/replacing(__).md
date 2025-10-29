---
title: replacing(_:)
description: Positions the window in the same spot as an existing window, hiding the old window in the process.
source: https://developer.apple.com/documentation/swiftui/windowplacement/position/replacing(_:)
timestamp: 2025-10-29T00:14:09.112Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [windowplacement](/documentation/swiftui/windowplacement) › [position](/documentation/swiftui/windowplacement/position)

**Type Method**

# replacing(_:)

**Available on:** visionOS 2.0+

> Positions the window in the same spot as an existing window, hiding the old window in the process.

```swift
static func replacing(_ relativeWindow: WindowProxy) -> WindowPlacement.Position
```

## Parameters

**relativeWindow**

The existing window that the new window will replace.



## Discussion

This will position the new window in the same location as the specified existing window, and hide the old window. Closing the new window will then result in the original window being shown again.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
