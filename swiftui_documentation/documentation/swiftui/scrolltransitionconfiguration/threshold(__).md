---
title: threshold(_:)
description: Sets the threshold at which the view will be considered fully visible.
source: https://developer.apple.com/documentation/swiftui/scrolltransitionconfiguration/threshold(_:)
timestamp: 2025-10-29T00:13:33.008Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scrolltransitionconfiguration](/documentation/swiftui/scrolltransitionconfiguration)

**Instance Method**

# threshold(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Sets the threshold at which the view will be considered fully visible.

```swift
func threshold(_ threshold: ScrollTransitionConfiguration.Threshold) -> ScrollTransitionConfiguration
```

## Parameters

**threshold**

The threshold specifying how much of the view must intersect with the container before it is treated as visible.



## Return Value

A copy of this configuration with the threshold set to the given value.

## Accessing the configuration

- [animation(_:)](/documentation/swiftui/scrolltransitionconfiguration/animation(_:))
- [ScrollTransitionConfiguration.Threshold](/documentation/swiftui/scrolltransitionconfiguration/threshold)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
