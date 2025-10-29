---
title: makeBody(configuration:)
description: Creates a view representing the body of a gauge.
source: https://developer.apple.com/documentation/swiftui/gaugestyle/makebody(configuration:)
timestamp: 2025-10-29T00:15:25.996Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [gaugestyle](/documentation/swiftui/gaugestyle)

**Instance Method**

# makeBody(configuration:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+, watchOS 7.0+

> Creates a view representing the body of a gauge.

```swift
@ViewBuilder @MainActor @preconcurrency func makeBody(configuration: Self.Configuration) -> Self.Body
```

## Parameters

**configuration**

The properties to apply to the gauge instance.



## Discussion

The system calls this modifier on each instance of gauge within a view hierarchy where this style is the current gauge style.

## Creating custom gauge styles

- [GaugeStyle.Configuration](/documentation/swiftui/gaugestyle/configuration)
- [Body](/documentation/swiftui/gaugestyle/body)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
