---
title: currentValueLabel
description: A view that describes the current value of a progress view.
source: https://developer.apple.com/documentation/swiftui/progressviewstyleconfiguration/currentvaluelabel-swift.property
timestamp: 2025-10-29T00:15:12.220Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [progressviewstyleconfiguration](/documentation/swiftui/progressviewstyleconfiguration)

**Instance Property**

# currentValueLabel

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A view that describes the current value of a progress view.

```swift
var currentValueLabel: ProgressViewStyleConfiguration.CurrentValueLabel?
```

## Discussion

If `nil`, then the value of the progress view is either self-evident from the surrounding context or unknown, and the style does not need to provide any additional description.

If the progress view is defined using a `Progress` instance, then this label is equivalent to its `localizedAdditionalDescription`.

## Configuring the current value label

- [ProgressViewStyleConfiguration.CurrentValueLabel](/documentation/swiftui/progressviewstyleconfiguration/currentvaluelabel-swift.struct)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
