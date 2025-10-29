---
title: init(windowID:)
description: Create a window visibility toggle to alter the visibility of a specific window.
source: https://developer.apple.com/documentation/swiftui/windowvisibilitytoggle/init(windowid:)
timestamp: 2025-10-29T00:14:25.005Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [windowvisibilitytoggle](/documentation/swiftui/windowvisibilitytoggle)

**Initializer**

# init(windowID:)

**Available on:** macOS 15.0+

> Create a window visibility toggle to alter the visibility of a specific window.

```swift
init(windowID: String) where Label == DefaultWindowVisibilityToggleLabel
```

## Parameters

**windowID**

The `id` of the singleton window type that should be toggled. If this is not a valid id, the toggle will be disabled and non-functional.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
