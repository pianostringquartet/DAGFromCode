---
title: automatic
description: The default hover effect based on the surrounding context.
source: https://developer.apple.com/documentation/swiftui/customhovereffect/automatic
timestamp: 2025-10-29T00:12:41.631Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [customhovereffect](/documentation/swiftui/customhovereffect)

**Type Property**

# automatic

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, tvOS 18.0+, visionOS 2.0+

> The default hover effect based on the surrounding context.

```swift
static var automatic: AutomaticHoverEffect { get }
```

## Discussion

The automatic effect will resolve to any [defaultHoverEffect(_:)](/documentation/swiftui/view/defaulthovereffect(_:)) applied to the current View hierarchy, or a system-defined effect if no default effect has been defined.

## Getting built-in hover effects

- [empty](/documentation/swiftui/customhovereffect/empty)
- [highlight](/documentation/swiftui/customhovereffect/highlight)
- [lift](/documentation/swiftui/customhovereffect/lift)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
