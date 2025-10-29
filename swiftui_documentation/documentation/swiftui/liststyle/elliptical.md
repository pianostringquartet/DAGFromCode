---
title: elliptical
description: The list style that describes the behavior and appearance of an elliptical list.
source: https://developer.apple.com/documentation/swiftui/liststyle/elliptical
timestamp: 2025-10-29T00:09:14.297Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [liststyle](/documentation/swiftui/liststyle)

**Type Property**

# elliptical

**Available on:** watchOS 7.0+

> The list style that describes the behavior and appearance of an elliptical list.

```swift
static var elliptical: EllipticalListStyle { get }
```

## Discussion

On watchOS, the elliptical list style uses a transform for items rolling off the top or bottom of the list, as if on a rounded surface that faces the user.

Apple Watch Series 3 does not support this style and will instead fall back to using the [plain](/documentation/swiftui/liststyle/plain) style.

## Getting built-in list styles

- [automatic](/documentation/swiftui/liststyle/automatic)
- [bordered](/documentation/swiftui/liststyle/bordered)
- [carousel](/documentation/swiftui/liststyle/carousel)
- [grouped](/documentation/swiftui/liststyle/grouped)
- [inset](/documentation/swiftui/liststyle/inset)
- [insetGrouped](/documentation/swiftui/liststyle/insetgrouped)
- [plain](/documentation/swiftui/liststyle/plain)
- [sidebar](/documentation/swiftui/liststyle/sidebar)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
