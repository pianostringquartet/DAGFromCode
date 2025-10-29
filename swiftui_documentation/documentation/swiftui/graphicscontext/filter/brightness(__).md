---
title: brightness(_:)
description: Returns a filter that applies a brightness adjustment.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/filter/brightness(_:)
timestamp: 2025-10-29T00:11:19.651Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [filter](/documentation/swiftui/graphicscontext/filter)

**Type Method**

# brightness(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Returns a filter that applies a brightness adjustment.

```swift
static func brightness(_ amount: Double) -> GraphicsContext.Filter
```

## Parameters

**amount**

An amount to add to the pixel’s color components.



## Return Value

A filter that applies a brightness adjustment.

## Discussion

This filter is different than `brightness` filter primitive defined by the Scalable Vector Graphics (SVG) specification. You can obtain an effect like that filter using a [grayscale(_:)](/documentation/swiftui/graphicscontext/filter/grayscale(_:)) color multiply. However, this filter does match the [CIColor Controls](/documentation/CoreImage/CIColorControls) filter’s brightness adjustment.

## Changing brightness and contrast

- [contrast(_:)](/documentation/swiftui/graphicscontext/filter/contrast(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
