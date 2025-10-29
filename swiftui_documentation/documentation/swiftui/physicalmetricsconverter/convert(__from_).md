---
title: convert(_:from:)
description: Converts a length in the specified unit to a length in points suitable for use in the environment this converter is associated with.
source: https://developer.apple.com/documentation/swiftui/physicalmetricsconverter/convert(_:from:)
timestamp: 2025-10-29T00:13:46.711Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [physicalmetricsconverter](/documentation/swiftui/physicalmetricsconverter)

**Instance Method**

# convert(_:from:)

**Available on:** visionOS 1.0+

> Converts a length in the specified unit to a length in points suitable for use in the environment this converter is associated with.

```swift
@MainActor @preconcurrency func convert(_ lengthValue: CGFloat, from unit: UnitLength) -> CGFloat
```

## Return Value

A value in points. Use this value only in the scene this converter was associated with.

## Converting a unit length

- [convert(_:to:)](/documentation/swiftui/physicalmetricsconverter/convert(_:to:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
