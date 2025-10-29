---
title: alphaThreshold(min:max:color:)
description: Returns a filter that replaces each pixel with alpha components within a range by a constant color, or transparency otherwise.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/filter/alphathreshold(min:max:color:)
timestamp: 2025-10-29T00:10:13.324Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [filter](/documentation/swiftui/graphicscontext/filter)

**Type Method**

# alphaThreshold(min:max:color:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Returns a filter that replaces each pixel with alpha components within a range by a constant color, or transparency otherwise.

```swift
static func alphaThreshold(min: Double, max: Double = 1, color: Color = Color.black) -> GraphicsContext.Filter
```

## Parameters

**min**

The minimum alpha threshold. Pixels whose alpha component is less than this value will render as transparent. Results are undefined unless `min < max`.



**max**

The maximum alpha threshold. Pixels whose alpha component is greater than this value will render as transparent. Results are undefined unless `min < max`.



**color**

The color that is output for pixels with an alpha component between the two threshold values.



## Return Value

A filter that applies a threshold to alpha values.

## Adjusting opacity

- [luminanceToAlpha](/documentation/swiftui/graphicscontext/filter/luminancetoalpha)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
