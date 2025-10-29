---
title: contrast(_:)
description: Returns a filter that applies a contrast adjustment.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/filter/contrast(_:)
timestamp: 2025-10-29T00:12:41.566Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [filter](/documentation/swiftui/graphicscontext/filter)

**Type Method**

# contrast(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Returns a filter that applies a contrast adjustment.

```swift
static func contrast(_ amount: Double) -> GraphicsContext.Filter
```

## Parameters

**amount**

An amount to adjust the contrast. A value of zero leaves the result completely gray. A value of one leaves the result unchanged. You can use values greater than one.



## Return Value

A filter that applies a contrast adjustment.

## Discussion

This filter is equivalent to the `contrast` filter primitive defined by the Scalable Vector Graphics (SVG) specification.

## Changing brightness and contrast

- [brightness(_:)](/documentation/swiftui/graphicscontext/filter/brightness(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
