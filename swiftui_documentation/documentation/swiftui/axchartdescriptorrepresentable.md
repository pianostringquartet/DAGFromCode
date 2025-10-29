---
title: AXChartDescriptorRepresentable
description: A type to generate an  object that you use to provide information about a chart and its data for an accessible experience in VoiceOver or other assistive technologies.
source: https://developer.apple.com/documentation/swiftui/axchartdescriptorrepresentable
timestamp: 2025-10-29T00:09:34.141Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# AXChartDescriptorRepresentable

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A type to generate an  object that you use to provide information about a chart and its data for an accessible experience in VoiceOver or other assistive technologies.

```swift
protocol AXChartDescriptorRepresentable
```

## Overview

Note that you may use the `@Environment` property wrapper inside the implementation of your `AXChartDescriptorRepresentable`, in which case you should implement `updateChartDescriptor`, which will be called when the `Environment` changes.

For example, to provide accessibility for a view that represents a chart, you would first declare your chart descriptor representable type:

```swift
struct MyChartDescriptorRepresentable: AXChartDescriptorRepresentable {
    func makeChartDescriptor() -> AXChartDescriptor {
        // Build and return your `AXChartDescriptor` here.
    }

    func updateChartDescriptor(_ descriptor: AXChartDescriptor) {
        // Update your chart descriptor with any new values.
    }
}
```

Then, provide an instance of your `AXChartDescriptorRepresentable` type to your view using the `accessibilityChartDescriptor` modifier:

```swift
var body: some View {
    MyChartView()
        .accessibilityChartDescriptor(MyChartDescriptorRepresentable())
}
```

## Managing a descriptor

- [makeChartDescriptor()](/documentation/swiftui/axchartdescriptorrepresentable/makechartdescriptor()) Create the  for this view, and return it.
- [updateChartDescriptor(_:)](/documentation/swiftui/axchartdescriptorrepresentable/updatechartdescriptor(_:)) Update the existing  for your view, based on changes in your view or in the .

## Describing charts

- [accessibilityChartDescriptor(_:)](/documentation/swiftui/view/accessibilitychartdescriptor(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
