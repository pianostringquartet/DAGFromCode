---
title: inverse
description: Returns a copy of the curve with its x and y components swapped.
source: https://developer.apple.com/documentation/swiftui/unitcurve/inverse
timestamp: 2025-10-29T00:11:13.419Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [unitcurve](/documentation/swiftui/unitcurve)

**Instance Property**

# inverse

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Returns a copy of the curve with its x and y components swapped.

```swift
var inverse: UnitCurve { get }
```

## Discussion

The inverse can be used to solve a curve in reverse: given a known output (y) value, the corresponding input (x) value can be found by using `inverse`:

```swift
let curve = UnitCurve.easeInOut

/// The input time for which an easeInOut curve returns 0.6.
let inputTime = curve.inverse.evaluate(at: 0.6)
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
