---
title: chartLegend(position:alignment:spacing:content:)
description: Configures the legend for charts.
source: https://developer.apple.com/documentation/swiftui/view/chartlegend(position:alignment:spacing:content:)
timestamp: 2025-10-29T00:11:03.083Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# chartLegend(position:alignment:spacing:content:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Configures the legend for charts.

```swift
nonisolated func chartLegend<Content>(position: AnnotationPosition = .automatic, alignment: Alignment? = nil, spacing: CGFloat? = nil, @ViewBuilder content: () -> Content) -> some View where Content : View
```

## Parameters

**position**

Configures the position of the legend.



**alignment**

Alignment of the legend within the space available to it. Use `nil` for default alignment.



**spacing**

Distance between the legend and the chart. Use `nil` for the default spacing.



**content**

The content of the legend.



## Legends

- [chartLegend(_:)](/documentation/swiftui/view/chartlegend(_:))
- [chartLegend(position:alignment:spacing:)](/documentation/swiftui/view/chartlegend(position:alignment:spacing:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
