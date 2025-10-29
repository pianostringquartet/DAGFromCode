---
title: chartZScale(domain:type:)
description: Configures the z scale for 3D charts.
source: https://developer.apple.com/documentation/swiftui/view/chartzscale(domain:type:)
timestamp: 2025-10-29T00:12:26.298Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# chartZScale(domain:type:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, visionOS 26.0+

> Configures the z scale for 3D charts.

```swift
nonisolated func chartZScale<Domain>(domain: Domain, type: ScaleType? = nil) -> some View where Domain : ScaleDomain
```

## Parameters

**domain**

The possible data values along the z axis in the chart. You can define the domain with a `ClosedRange` for numeric values (e.g., `0 ... 500`).



**type**

The scale type.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
