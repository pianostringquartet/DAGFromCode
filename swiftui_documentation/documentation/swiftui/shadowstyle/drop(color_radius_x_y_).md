---
title: drop(color:radius:x:y:)
description: Creates a custom drop shadow style.
source: https://developer.apple.com/documentation/swiftui/shadowstyle/drop(color:radius:x:y:)
timestamp: 2025-10-29T00:14:04.530Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shadowstyle](/documentation/swiftui/shadowstyle)

**Type Method**

# drop(color:radius:x:y:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a custom drop shadow style.

```swift
static func drop(color: Color = .init(.sRGBLinear, white: 0, opacity: 0.33), radius: CGFloat, x: CGFloat = 0, y: CGFloat = 0) -> ShadowStyle
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

Drop shadows draw behind the source content by blurring, tinting and offsetting its per-pixel alpha values.

## Getting shadow styles

- [inner(color:radius:x:y:)](/documentation/swiftui/shadowstyle/inner(color:radius:x:y:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
