---
title: convert(_:to:)
description: Converts a point’s coordinates to physical length measurements in the specified unit.
source: https://developer.apple.com/documentation/swiftui/physicalmetricsconverter/convert(_:to:)
timestamp: 2025-10-29T00:13:00.324Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [physicalmetricsconverter](/documentation/swiftui/physicalmetricsconverter)

**Instance Method**

# convert(_:to:)

**Available on:** visionOS 1.0+

> Converts a point’s coordinates to physical length measurements in the specified unit.

```swift
@MainActor @preconcurrency func convert(_ point: CGPoint, to unit: UnitLength) -> CGPoint
```

## Return Value

A point value with physical length measurements, in the given unit

## Discussion

The point is assumed to be in the coordinate system of the scene that this converter is associated with. If the scene is scaled, the physical measurement will take this scale into account.

## Converting a unit length

- [convert(_:from:)](/documentation/swiftui/physicalmetricsconverter/convert(_:from:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
