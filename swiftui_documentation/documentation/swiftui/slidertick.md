---
title: SliderTick
description: A representation of a tick in a slider, with associated value and optional label.
source: https://developer.apple.com/documentation/swiftui/slidertick
timestamp: 2025-10-29T00:10:59.816Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SliderTick

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, visionOS 26.0+, watchOS 26.0+

> A representation of a tick in a slider, with associated value and optional label.

```swift
struct SliderTick<V> where V : BinaryFloatingPoint
```

## Overview

The following example shows a slider bound to the value `percentage`. As the slider updates the `currentValueLabel`. The slider also renders marks at a `0.25` step interval.

```swift
@State private var percentage = 0.5

Slider(value: $percentage) {
    Text("Percentage")
} currentValueLabel: {
    Text("\(percentage)%")
} ticks: {
    SliderTickContentForEach(
        stride(from: 0.0, through: 1.0, by: 0.25).map { $0 },
        id: \.self
    ) { value in
        SliderTick(value) {
            label(for: value)
        }
    }
}
```

## Conforms To

- [Comparable](/documentation/Swift/Comparable)
- [Equatable](/documentation/Swift/Equatable)
- [Identifiable](/documentation/Swift/Identifiable)
- [SliderTickContent](/documentation/swiftui/slidertickcontent)

## Structures

- [SliderTick.ID](/documentation/swiftui/slidertick/id-swift.struct) The identity of a tick.

## Initializers

- [init(_:)](/documentation/swiftui/slidertick/init(_:)) Create a labeled slider tick at a specific value.
- [init(_:_:)](/documentation/swiftui/slidertick/init(_:_:)) Create a slider tick with a label from a localized string key.
- [init(_:label:)](/documentation/swiftui/slidertick/init(_:label:)) Create a labeled slider tick at a specific value.

## Instance Properties

- [id](/documentation/swiftui/slidertick/id-swift.property) The identity of a tick, which is derived from its value.

## Adding ticks to a slider

- [SliderTickBuilder](/documentation/swiftui/slidertickbuilder)
- [SliderTickContentForEach](/documentation/swiftui/slidertickcontentforeach)
- [TupleSliderTickContent](/documentation/swiftui/tupleslidertickcontent)
- [SliderTickContent](/documentation/swiftui/slidertickcontent)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
