---
title: automatic
description: The automatic behavior.
source: https://developer.apple.com/documentation/swiftui/scrollcontentoffsetadjustmentbehavior/automatic
timestamp: 2025-10-29T00:12:25.879Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scrollcontentoffsetadjustmentbehavior](/documentation/swiftui/scrollcontentoffsetadjustmentbehavior)

**Type Property**

# automatic

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> The automatic behavior.

```swift
static var automatic: ScrollContentOffsetAdjustmentBehavior { get }
```

## Discussion

A scroll view may automatically adjust its content offset based on the current context. The absolute offset may be adjusted to keep content in relatively the same place. For example, when scrolled to the bottom, a scroll view may keep the bottom edge scrolled to the bottom when the overall size of its content changes.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
