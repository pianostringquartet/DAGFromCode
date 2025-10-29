---
title: GaugeStyleConfiguration
description: The properties of a gauge instance.
source: https://developer.apple.com/documentation/swiftui/gaugestyleconfiguration
timestamp: 2025-10-29T00:11:10.261Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# GaugeStyleConfiguration

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+, watchOS 7.0+

> The properties of a gauge instance.

```swift
struct GaugeStyleConfiguration
```

## Describing the purpose of the gauge

- [label](/documentation/swiftui/gaugestyleconfiguration/label-swift.property) A view that describes the purpose of the gauge.
- [GaugeStyleConfiguration.Label](/documentation/swiftui/gaugestyleconfiguration/label-swift.struct) A type-erased label of a gauge, describing its purpose.

## Reporting the range

- [minimumValueLabel](/documentation/swiftui/gaugestyleconfiguration/minimumvaluelabel-swift.property) A view that describes the minimum of the range for the current value.
- [GaugeStyleConfiguration.MinimumValueLabel](/documentation/swiftui/gaugestyleconfiguration/minimumvaluelabel-swift.struct) A type-erased value label of a gauge describing the minimum value.
- [maximumValueLabel](/documentation/swiftui/gaugestyleconfiguration/maximumvaluelabel-swift.property) A view that describes the maximum of the range for the current value.
- [GaugeStyleConfiguration.MaximumValueLabel](/documentation/swiftui/gaugestyleconfiguration/maximumvaluelabel-swift.struct) A type-erased value label of a gauge describing the maximum value.

## Setting the value

- [value](/documentation/swiftui/gaugestyleconfiguration/value) The current value of the gauge.
- [currentValueLabel](/documentation/swiftui/gaugestyleconfiguration/currentvaluelabel-swift.property) A view that describes the current value.
- [GaugeStyleConfiguration.CurrentValueLabel](/documentation/swiftui/gaugestyleconfiguration/currentvaluelabel-swift.struct) A type-erased value label of a gauge that contains the current value.
- [GaugeStyleConfiguration.MarkedValueLabel](/documentation/swiftui/gaugestyleconfiguration/markedvaluelabel) A type-erased label describing a specific value of a gauge.

## Styling indicators

- [gaugeStyle(_:)](/documentation/swiftui/view/gaugestyle(_:))
- [GaugeStyle](/documentation/swiftui/gaugestyle)
- [progressViewStyle(_:)](/documentation/swiftui/view/progressviewstyle(_:))
- [ProgressViewStyle](/documentation/swiftui/progressviewstyle)
- [ProgressViewStyleConfiguration](/documentation/swiftui/progressviewstyleconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
