---
title: updateChartDescriptor(_:)
description: Update the existing  for your view, based on changes in your view or in the .
source: https://developer.apple.com/documentation/swiftui/axchartdescriptorrepresentable/updatechartdescriptor(_:)
timestamp: 2025-10-29T00:09:29.857Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [axchartdescriptorrepresentable](/documentation/swiftui/axchartdescriptorrepresentable)

**Instance Method**

# updateChartDescriptor(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Update the existing  for your view, based on changes in your view or in the .

```swift
func updateChartDescriptor(_ descriptor: AXChartDescriptor)
```

## Discussion

This will be called as needed, when accessibility needs your `AXChartDescriptor` for VoiceOver. It will only be called if the inputs to your views, or a relevant part of the `Environment`, have changed.

## Managing a descriptor

- [makeChartDescriptor()](/documentation/swiftui/axchartdescriptorrepresentable/makechartdescriptor())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
