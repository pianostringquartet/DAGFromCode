---
title: label
description: A view that describes the task represented by the progress view.
source: https://developer.apple.com/documentation/swiftui/progressviewstyleconfiguration/label-swift.property
timestamp: 2025-10-29T00:15:20.475Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [progressviewstyleconfiguration](/documentation/swiftui/progressviewstyleconfiguration)

**Instance Property**

# label

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A view that describes the task represented by the progress view.

```swift
var label: ProgressViewStyleConfiguration.Label?
```

## Discussion

If `nil`, then the task is self-evident from the surrounding context, and the style does not need to provide any additional description.

If the progress view is defined using a `Progress` instance, then this label is equivalent to its `localizedDescription`.

## Configuring the label

- [ProgressViewStyleConfiguration.Label](/documentation/swiftui/progressviewstyleconfiguration/label-swift.struct)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
