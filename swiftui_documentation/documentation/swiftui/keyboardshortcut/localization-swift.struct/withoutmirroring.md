---
title: withoutMirroring
description: Don’t mirror shortcuts.
source: https://developer.apple.com/documentation/swiftui/keyboardshortcut/localization-swift.struct/withoutmirroring
timestamp: 2025-10-29T00:12:10.590Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [keyboardshortcut](/documentation/swiftui/keyboardshortcut) › [localization-swift.struct](/documentation/swiftui/keyboardshortcut/localization-swift.struct)

**Type Property**

# withoutMirroring

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, visionOS 1.0+

> Don’t mirror shortcuts.

```swift
static let withoutMirroring: KeyboardShortcut.Localization
```

## Discussion

Use this for shortcuts that always have a specific directionality, like aligning something on the right.

Don’t use this option for navigational shortcuts like “Go Back” because navigation is flipped in right-to-left contexts.

## Getting localization strategies

- [automatic](/documentation/swiftui/keyboardshortcut/localization-swift.struct/automatic)
- [custom](/documentation/swiftui/keyboardshortcut/localization-swift.struct/custom)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
