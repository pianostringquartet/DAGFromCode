---
title: inverse
description: An option to invert the shape or layer alpha as the clip mask.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/clipoptions/inverse
timestamp: 2025-10-29T00:14:53.034Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [clipoptions](/documentation/swiftui/graphicscontext/clipoptions)

**Type Property**

# inverse

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> An option to invert the shape or layer alpha as the clip mask.

```swift
static var inverse: GraphicsContext.ClipOptions { get }
```

## Discussion

When you use this option, SwiftUI uses `1 - alpha` instead of `alpha` for the given clip shape.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
