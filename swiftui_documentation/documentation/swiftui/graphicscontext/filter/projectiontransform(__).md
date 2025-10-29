---
title: projectionTransform(_:)
description: Returns a filter that transforms the rasterized form of subsequent graphics primitives.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/filter/projectiontransform(_:)
timestamp: 2025-10-29T00:14:03.444Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [filter](/documentation/swiftui/graphicscontext/filter)

**Type Method**

# projectionTransform(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Returns a filter that transforms the rasterized form of subsequent graphics primitives.

```swift
static func projectionTransform(_ matrix: ProjectionTransform) -> GraphicsContext.Filter
```

## Parameters

**matrix**

A projection transform to apply to the rasterized form of graphics primitives.



## Return Value

A filter that applies a transform.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
