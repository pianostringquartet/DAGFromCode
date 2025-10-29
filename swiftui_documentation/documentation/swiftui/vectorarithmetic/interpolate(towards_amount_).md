---
title: interpolate(towards:amount:)
description: Interpolates this value with  by the specified .
source: https://developer.apple.com/documentation/swiftui/vectorarithmetic/interpolate(towards:amount:)
timestamp: 2025-10-29T00:12:21.382Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [vectorarithmetic](/documentation/swiftui/vectorarithmetic)

**Instance Method**

# interpolate(towards:amount:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Interpolates this value with  by the specified .

```swift
mutating func interpolate(towards other: Self, amount: Double)
```

## Discussion

This is equivalent to `self = self + (other - self) * amount`.

## Manipulating values

- [magnitudeSquared](/documentation/swiftui/vectorarithmetic/magnitudesquared)
- [scale(by:)](/documentation/swiftui/vectorarithmetic/scale(by:))
- [scaled(by:)](/documentation/swiftui/vectorarithmetic/scaled(by:))
- [interpolated(towards:amount:)](/documentation/swiftui/vectorarithmetic/interpolated(towards:amount:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
