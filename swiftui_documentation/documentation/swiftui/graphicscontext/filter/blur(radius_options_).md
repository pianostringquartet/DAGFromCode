---
title: blur(radius:options:)
description: Returns a filter that applies a Gaussian blur.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/filter/blur(radius:options:)
timestamp: 2025-10-29T00:12:31.660Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [filter](/documentation/swiftui/graphicscontext/filter)

**Type Method**

# blur(radius:options:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Returns a filter that applies a Gaussian blur.

```swift
static func blur(radius: CGFloat, options: GraphicsContext.BlurOptions = BlurOptions()) -> GraphicsContext.Filter
```

## Parameters

**radius**

The standard deviation of the Gaussian blur.



**options**

A set of options controlling the application of the effect.



## Return Value

A filter that applies Gaussian blur.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
