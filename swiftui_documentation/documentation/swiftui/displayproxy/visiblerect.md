---
title: visibleRect
description: The portion of the display where it is safe to place windows.
source: https://developer.apple.com/documentation/swiftui/displayproxy/visiblerect
timestamp: 2025-10-29T00:12:13.759Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [displayproxy](/documentation/swiftui/displayproxy)

**Instance Property**

# visibleRect

**Available on:** macOS 15.0+

> The portion of the display where it is safe to place windows.

```swift
let visibleRect: CGRect
```

## Discussion

On macOS, this area does not contain the space occupied by the dock and menu bar. Additionally, on Macs that include a camera housing in the bezel this rectangle does not include the bezel or visible areas to each side of the bezel.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
