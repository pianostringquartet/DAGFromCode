---
title: interpolated(towards:amount:)
description: Returns this value interpolated with  by the specified .
source: https://developer.apple.com/documentation/swiftui/vectorarithmetic/interpolated(towards:amount:)
timestamp: 2025-10-29T00:13:05.613Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [vectorarithmetic](/documentation/swiftui/vectorarithmetic)

**Instance Method**

# interpolated(towards:amount:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Returns this value interpolated with  by the specified .

```swift
func interpolated(towards other: Self, amount: Double) -> Self
```

## Discussion

This result is equivalent to `self + (other - self) * amount`.

## Manipulating values

- [magnitudeSquared](/documentation/swiftui/vectorarithmetic/magnitudesquared)
- [scale(by:)](/documentation/swiftui/vectorarithmetic/scale(by:))
- [scaled(by:)](/documentation/swiftui/vectorarithmetic/scaled(by:))
- [interpolate(towards:amount:)](/documentation/swiftui/vectorarithmetic/interpolate(towards:amount:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
