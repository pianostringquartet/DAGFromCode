---
title: palette(_:)
description: Returns a multilevel shading instance constructed from an array of shading instances.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/shading/palette(_:)
timestamp: 2025-10-29T00:15:29.760Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [shading](/documentation/swiftui/graphicscontext/shading)

**Type Method**

# palette(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Returns a multilevel shading instance constructed from an array of shading instances.

```swift
static func palette(_ array: [GraphicsContext.Shading]) -> GraphicsContext.Shading
```

## Parameters

**array**

An array of shading instances. The array must contain at least one element.



## Return Value

A shading instance composed from the given instances.

## Composite shading types

- [backdrop](/documentation/swiftui/graphicscontext/shading/backdrop)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
