---
title: inner(color:radius:x:y:)
description: Creates a custom inner shadow style.
source: https://developer.apple.com/documentation/swiftui/shadowstyle/inner(color:radius:x:y:)
timestamp: 2025-10-29T00:13:24.979Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shadowstyle](/documentation/swiftui/shadowstyle)

**Type Method**

# inner(color:radius:x:y:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a custom inner shadow style.

```swift
static func inner(color: Color = .init(.sRGBLinear, white: 0, opacity: 0.55), radius: CGFloat, x: CGFloat = 0, y: CGFloat = 0) -> ShadowStyle
```

## Parameters

**color**

The shadow’s color.



**radius**

The shadow’s size.



**x**

A horizontal offset you use to position the shadow relative to this view.



**y**

A vertical offset you use to position the shadow relative to this view.



## Return Value

A new shadow style.

## Discussion

Inner shadows draw on top of the source content by blurring, tinting, inverting and offsetting its per-pixel alpha values.

## Getting shadow styles

- [drop(color:radius:x:y:)](/documentation/swiftui/shadowstyle/drop(color:radius:x:y:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
