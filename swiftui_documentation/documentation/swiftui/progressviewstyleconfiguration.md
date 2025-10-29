---
title: ProgressViewStyleConfiguration
description: The properties of a progress view instance.
source: https://developer.apple.com/documentation/swiftui/progressviewstyleconfiguration
timestamp: 2025-10-29T00:10:08.857Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ProgressViewStyleConfiguration

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> The properties of a progress view instance.

```swift
struct ProgressViewStyleConfiguration
```

## Configuring the label

- [label](/documentation/swiftui/progressviewstyleconfiguration/label-swift.property) A view that describes the task represented by the progress view.
- [ProgressViewStyleConfiguration.Label](/documentation/swiftui/progressviewstyleconfiguration/label-swift.struct) A type-erased label describing the task represented by the progress view.

## Configuring the current value label

- [currentValueLabel](/documentation/swiftui/progressviewstyleconfiguration/currentvaluelabel-swift.property) A view that describes the current value of a progress view.
- [ProgressViewStyleConfiguration.CurrentValueLabel](/documentation/swiftui/progressviewstyleconfiguration/currentvaluelabel-swift.struct) A type-erased label that describes the current value of a progress view.

## Configuring progress completion

- [fractionCompleted](/documentation/swiftui/progressviewstyleconfiguration/fractioncompleted) The completed fraction of the task represented by the progress view, from  (not yet started) to  (fully complete), or  if the progress is indeterminate or relative to a date interval.

## Styling indicators

- [gaugeStyle(_:)](/documentation/swiftui/view/gaugestyle(_:))
- [GaugeStyle](/documentation/swiftui/gaugestyle)
- [GaugeStyleConfiguration](/documentation/swiftui/gaugestyleconfiguration)
- [progressViewStyle(_:)](/documentation/swiftui/view/progressviewstyle(_:))
- [ProgressViewStyle](/documentation/swiftui/progressviewstyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
