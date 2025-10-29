---
title: SliderTickContentForEach
description: A type of slider content that creates content by iterating over a collection.
source: https://developer.apple.com/documentation/swiftui/slidertickcontentforeach
timestamp: 2025-10-29T00:13:17.580Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SliderTickContentForEach

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, visionOS 26.0+, watchOS 26.0+

> A type of slider content that creates content by iterating over a collection.

```swift
struct SliderTickContentForEach<Data, ID, Content> where Data : RandomAccessCollection, ID : Hashable, Content : SliderTickContent
```

## Conforms To

- [SliderTickContent](/documentation/swiftui/slidertickcontent)

## Initializers

- [init(_:content:)](/documentation/swiftui/slidertickcontentforeach/init(_:content:)) Creates an instance that uniquely identifies and creates slider ticks across updates based on the identity of the underlying data.
- [init(_:id:content:)](/documentation/swiftui/slidertickcontentforeach/init(_:id:content:)) Creates an instance that uniquely identifies and creates slider ticks across updates based on the provided key path to the underlying data’s identifier.

## Adding ticks to a slider

- [SliderTick](/documentation/swiftui/slidertick)
- [SliderTickBuilder](/documentation/swiftui/slidertickbuilder)
- [TupleSliderTickContent](/documentation/swiftui/tupleslidertickcontent)
- [SliderTickContent](/documentation/swiftui/slidertickcontent)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
