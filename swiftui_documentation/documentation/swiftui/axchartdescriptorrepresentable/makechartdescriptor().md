---
title: makeChartDescriptor()
description: Create the  for this view, and return it.
source: https://developer.apple.com/documentation/swiftui/axchartdescriptorrepresentable/makechartdescriptor()
timestamp: 2025-10-29T00:09:19.352Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [axchartdescriptorrepresentable](/documentation/swiftui/axchartdescriptorrepresentable)

**Instance Method**

# makeChartDescriptor()

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Create the  for this view, and return it.

```swift
func makeChartDescriptor() -> AXChartDescriptor
```

## Discussion

This will be called once per identity of your `View`. It will not be run again unless the identity of your `View` changes. If you need to update the `AXChartDescriptor` based on changes in your `View`, or in the `Environment`, implement `updateChartDescriptor`. This method will only be called if / when accessibility needs the `AXChartDescriptor` of your view, for VoiceOver.

## Managing a descriptor

- [updateChartDescriptor(_:)](/documentation/swiftui/axchartdescriptorrepresentable/updatechartdescriptor(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
