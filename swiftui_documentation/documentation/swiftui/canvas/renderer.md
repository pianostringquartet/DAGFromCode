---
title: renderer
description: The drawing callback that you use to draw into the canvas.
source: https://developer.apple.com/documentation/swiftui/canvas/renderer
timestamp: 2025-10-29T00:10:32.331Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [canvas](/documentation/swiftui/canvas)

**Instance Property**

# renderer

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The drawing callback that you use to draw into the canvas.

```swift
var renderer: (inout GraphicsContext, CGSize) -> Void
```

## Parameters

**context**

The graphics context to draw into.



**size**

The current size of the view.



## Rendering

- [rendersAsynchronously](/documentation/swiftui/canvas/rendersasynchronously)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
