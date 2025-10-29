---
title: mirror
description: An option that repeats the gradient outside its nominal range, reflecting every other instance.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/gradientoptions/mirror
timestamp: 2025-10-29T00:12:31.320Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [gradientoptions](/documentation/swiftui/graphicscontext/gradientoptions)

**Type Property**

# mirror

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> An option that repeats the gradient outside its nominal range, reflecting every other instance.

```swift
static var mirror: GraphicsContext.GradientOptions { get }
```

## Discussion

Use this option to cause the gradient to repeat its pattern in areas that exceed the bounds of its start and end points. The repetitions alternately reverse the start and end points, producing a pattern like `0 -> 1`, `1 -> 0`, `0 -> 1`, and so on.

Without either this option or [repeat](/documentation/swiftui/graphicscontext/gradientoptions/repeat), the gradient stops at the end of its range. This option takes precendence if you set both this one and [repeat](/documentation/swiftui/graphicscontext/gradientoptions/repeat).

## Getting gradient options

- [linearColor](/documentation/swiftui/graphicscontext/gradientoptions/linearcolor)
- [repeat](/documentation/swiftui/graphicscontext/gradientoptions/repeat)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
