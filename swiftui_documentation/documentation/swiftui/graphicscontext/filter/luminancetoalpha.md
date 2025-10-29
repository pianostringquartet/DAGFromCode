---
title: luminanceToAlpha
description: Returns a filter that sets the opacity of each pixel based on its luminance.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/filter/luminancetoalpha
timestamp: 2025-10-29T00:15:21.030Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [filter](/documentation/swiftui/graphicscontext/filter)

**Type Property**

# luminanceToAlpha

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Returns a filter that sets the opacity of each pixel based on its luminance.

```swift
static var luminanceToAlpha: GraphicsContext.Filter { get }
```

## Return Value

A filter that applies a luminance to alpha transformation.

## Discussion

The filter computes the luminance of each pixel and uses it to define the opacity of the result, combined with black (zero) color components.

## Adjusting opacity

- [alphaThreshold(min:max:color:)](/documentation/swiftui/graphicscontext/filter/alphathreshold(min:max:color:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
