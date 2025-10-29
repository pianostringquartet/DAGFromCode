---
title: repeat
description: An option that repeats the gradient outside its nominal range.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/gradientoptions/repeat
timestamp: 2025-10-29T00:10:18.806Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [gradientoptions](/documentation/swiftui/graphicscontext/gradientoptions)

**Type Property**

# repeat

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> An option that repeats the gradient outside its nominal range.

```swift
static var `repeat`: GraphicsContext.GradientOptions { get }
```

## Discussion

Use this option to cause the gradient to repeat its pattern in areas that exceed the bounds of its start and end points. The repetitions use the same start and end value for each repetition.

Without this option or [mirror](/documentation/swiftui/graphicscontext/gradientoptions/mirror), the gradient stops at the end of its range. The [mirror](/documentation/swiftui/graphicscontext/gradientoptions/mirror) option takes precendence if you set both this one and that one.

## Getting gradient options

- [linearColor](/documentation/swiftui/graphicscontext/gradientoptions/linearcolor)
- [mirror](/documentation/swiftui/graphicscontext/gradientoptions/mirror)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
