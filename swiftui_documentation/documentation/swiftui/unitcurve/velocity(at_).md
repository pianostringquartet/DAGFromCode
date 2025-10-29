---
title: velocity(at:)
description: Returns the rate of change (first derivative) of the output value of the curve at the given time.
source: https://developer.apple.com/documentation/swiftui/unitcurve/velocity(at:)
timestamp: 2025-10-29T00:12:36.071Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [unitcurve](/documentation/swiftui/unitcurve)

**Instance Method**

# velocity(at:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Returns the rate of change (first derivative) of the output value of the curve at the given time.

```swift
func velocity(at progress: Double) -> Double
```

## Parameters

**progress**

The input progress (x component). The provided value is clamped to the range [0,1].



## Return Value

The velocity of the output value (y component) of the curve at the given time.

## Getting curve characteristics

- [value(at:)](/documentation/swiftui/unitcurve/value(at:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
