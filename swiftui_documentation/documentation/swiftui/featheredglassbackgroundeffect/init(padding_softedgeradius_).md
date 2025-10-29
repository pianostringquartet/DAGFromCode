---
title: init(padding:softEdgeRadius:)
description: Creates a feathered glassBackground effect.
source: https://developer.apple.com/documentation/swiftui/featheredglassbackgroundeffect/init(padding:softedgeradius:)
timestamp: 2025-10-29T00:09:46.781Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [featheredglassbackgroundeffect](/documentation/swiftui/featheredglassbackgroundeffect)

**Initializer**

# init(padding:softEdgeRadius:)

**Available on:** visionOS 2.4+

> Creates a feathered glassBackground effect.

```swift
init(padding length: CGFloat, softEdgeRadius: CGFloat? = nil)
```

## Return Value

A feathered background effect.

## Discussion

- padding: An amount, given in points, to pad all edges when style is renderding. However, it does not affect layout size, which is based on the content size. When it is less than effect’s blur size, the blur will be clipped.
- softEdgeRadius: When a blur is clipped, the radial size of the blur’s edge. If you set the value to `nil`, SwiftUI uses a default amount. The default value of this parameter is `nil`.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
