---
title: never
description: Scroll indicators should never be visible.
source: https://developer.apple.com/documentation/swiftui/scrollindicatorvisibility/never
timestamp: 2025-10-29T00:15:14.092Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scrollindicatorvisibility](/documentation/swiftui/scrollindicatorvisibility)

**Type Property**

# never

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Scroll indicators should never be visible.

```swift
static var never: ScrollIndicatorVisibility { get }
```

## Discussion

This value behaves like [hidden](/documentation/swiftui/scrollindicatorvisibility/hidden), but overrides scrollable views that choose to keep their indidicators visible. When using this value, provide an alternative method of scrolling. The typical horizontal swipe gesture might not be available, depending on the current input device.

## Getting visibilties

- [automatic](/documentation/swiftui/scrollindicatorvisibility/automatic)
- [hidden](/documentation/swiftui/scrollindicatorvisibility/hidden)
- [visible](/documentation/swiftui/scrollindicatorvisibility/visible)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
