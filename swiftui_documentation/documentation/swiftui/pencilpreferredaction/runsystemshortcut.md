---
title: runSystemShortcut
description: An action that runs a system shortcut.
source: https://developer.apple.com/documentation/swiftui/pencilpreferredaction/runsystemshortcut
timestamp: 2025-10-29T00:13:00.154Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [pencilpreferredaction](/documentation/swiftui/pencilpreferredaction)

**Type Property**

# runSystemShortcut

**Available on:** iOS 17.5+, iPadOS 17.5+, Mac Catalyst 17.5+, macOS 14.5+

> An action that runs a system shortcut.

```swift
static let runSystemShortcut: PencilPreferredAction
```

## Discussion

If the user selects this as their preferred action to perform after double-tapping or squeezing their Apple Pencil, your app will never be notified when they do. Instead, you should only use this information to remind the user about their preference in your app’s UI.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
