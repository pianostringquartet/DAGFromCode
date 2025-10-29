---
title: feathered(padding:softEdgeRadius:)
description: A feathered background effect with custom padding and soft edge radius.
source: https://developer.apple.com/documentation/swiftui/glassbackgroundeffect/feathered(padding:softedgeradius:)
timestamp: 2025-10-29T00:10:55.793Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [glassbackgroundeffect](/documentation/swiftui/glassbackgroundeffect)

**Type Method**

# feathered(padding:softEdgeRadius:)

**Available on:** visionOS 2.4+

> A feathered background effect with custom padding and soft edge radius.

```swift
static func feathered(padding length: CGFloat, softEdgeRadius: CGFloat? = nil) -> FeatheredGlassBackgroundEffect
```

## Parameters

**softEdgeRadius**

When a blur is clipped, the radial size of the blur’s edge. If you set the value to `nil`, SwiftUI uses a default amount. The default value of this parameter is `nil`.



## Return Value

A feathered background effect.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
