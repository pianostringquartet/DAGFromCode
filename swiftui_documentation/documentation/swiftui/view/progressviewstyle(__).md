---
title: progressViewStyle(_:)
description: Sets the style for progress views in this view.
source: https://developer.apple.com/documentation/swiftui/view/progressviewstyle(_:)
timestamp: 2025-10-29T00:09:52.618Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# progressViewStyle(_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Sets the style for progress views in this view.

```swift
nonisolated func progressViewStyle<S>(_ style: S) -> some View where S : ProgressViewStyle
```

## Parameters

**style**

The progress view style to use for this view.



## Discussion

For example, the following code creates a progress view that uses the “circular” style:

```swift
ProgressView()
    .progressViewStyle(.circular)
```

## Indicating a value

- [Gauge](/documentation/swiftui/gauge)
- [gaugeStyle(_:)](/documentation/swiftui/view/gaugestyle(_:))
- [ProgressView](/documentation/swiftui/progressview)
- [DefaultDateProgressLabel](/documentation/swiftui/defaultdateprogresslabel)
- [DefaultButtonLabel](/documentation/swiftui/defaultbuttonlabel)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
