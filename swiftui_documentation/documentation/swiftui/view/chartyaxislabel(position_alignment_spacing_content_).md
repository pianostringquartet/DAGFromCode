---
title: chartYAxisLabel(position:alignment:spacing:content:)
description: Adds y axis label for charts in the view.
source: https://developer.apple.com/documentation/swiftui/view/chartyaxislabel(position:alignment:spacing:content:)
timestamp: 2025-10-29T00:12:45.021Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# chartYAxisLabel(position:alignment:spacing:content:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Adds y axis label for charts in the view.

```swift
nonisolated func chartYAxisLabel<C>(position: AnnotationPosition = .automatic, alignment: Alignment? = nil, spacing: CGFloat? = nil, @ViewBuilder content: () -> C) -> some View where C : View
```

## Parameters

**position**

The position of the label.



**alignment**

The alignment of the label.



**spacing**

The spacing of the label from the axis markers.



**content**

The label content.



## Axis Labels

- [chartXAxisLabel(_:position:alignment:spacing:)](/documentation/swiftui/view/chartxaxislabel(_:position:alignment:spacing:))
- [chartXAxisLabel(position:alignment:spacing:content:)](/documentation/swiftui/view/chartxaxislabel(position:alignment:spacing:content:))
- [chartYAxisLabel(_:position:alignment:spacing:)](/documentation/swiftui/view/chartyaxislabel(_:position:alignment:spacing:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
