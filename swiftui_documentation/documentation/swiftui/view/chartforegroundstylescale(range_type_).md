---
title: chartForegroundStyleScale(range:type:)
description: Configures the foreground style scale for charts.
source: https://developer.apple.com/documentation/swiftui/view/chartforegroundstylescale(range:type:)
timestamp: 2025-10-29T00:13:13.616Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# chartForegroundStyleScale(range:type:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Configures the foreground style scale for charts.

```swift
nonisolated func chartForegroundStyleScale<Range>(range: Range, type: ScaleType? = nil) -> some View where Range : ScaleRange, Range.VisualValue : ShapeStyle
```

## Parameters

**range**

The range of foreground styles that correspond to the scale domain.



**type**

The scale type.



## Styles

- [chartBackground(alignment:content:)](/documentation/swiftui/view/chartbackground(alignment:content:))
- [chartForegroundStyleScale(_:)](/documentation/swiftui/view/chartforegroundstylescale(_:))
- [chartForegroundStyleScale(domain:range:type:)](/documentation/swiftui/view/chartforegroundstylescale(domain:range:type:))
- [chartForegroundStyleScale(domain:type:)](/documentation/swiftui/view/chartforegroundstylescale(domain:type:))
- [chartForegroundStyleScale(domain:mapping:)](/documentation/swiftui/view/chartforegroundstylescale(domain:mapping:))
- [chartForegroundStyleScale(mapping:)](/documentation/swiftui/view/chartforegroundstylescale(mapping:))
- [chartForegroundStyleScale(type:)](/documentation/swiftui/view/chartforegroundstylescale(type:))
- [chartPlotStyle(content:)](/documentation/swiftui/view/chartplotstyle(content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
