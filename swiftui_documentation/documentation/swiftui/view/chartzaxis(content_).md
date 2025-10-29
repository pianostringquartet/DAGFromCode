---
title: chartZAxis(content:)
description: Configures the z-axis for 3D charts in the view.
source: https://developer.apple.com/documentation/swiftui/view/chartzaxis(content:)
timestamp: 2025-10-29T00:09:19.089Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# chartZAxis(content:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, visionOS 26.0+

> Configures the z-axis for 3D charts in the view.

```swift
nonisolated func chartZAxis<Content>(@AxisContentBuilder content: () -> Content) -> some View where Content : AxisContent
```

## Parameters

**content**

The axis content.



## Discussion

Use this modifier to customize the z-axis of a chart. Provide an `AxisMarks` builder that composes `AxisGridLine`, `AxisTick`, and `AxisValueLabel` structures to form the axis. Omit components from the builder to omit them from the resulting axis. For example, the following code adds grid lines to the z-axis:

```swift
.chartZAxis {
    AxisMarks {
        AxisGridLine()
    }
}
```

Use arguments such as `position:` or `values:` to control the placement of the axis values it displays.

> [!NOTE]
> To add an axis label, use one of the label modifiers, like doc://com.apple.documentation/documentation/SwiftUI/View/chartZAxisLabel(position:alignment:spacing:content:).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
