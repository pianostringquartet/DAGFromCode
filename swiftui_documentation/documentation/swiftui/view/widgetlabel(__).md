---
title: widgetLabel(_:)
description: Returns a localized text label that displays additional content outside the accessory family widget’s main SwiftUI view.
source: https://developer.apple.com/documentation/swiftui/view/widgetlabel(_:)
timestamp: 2025-10-29T00:10:10.777Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# widgetLabel(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, visionOS 26.0+, watchOS 9.0+

> Returns a localized text label that displays additional content outside the accessory family widget’s main SwiftUI view.

```swift
@MainActor @preconcurrency func widgetLabel(_ label: LocalizedStringResource) -> some View
```

## Parameters

**label**

A label generated from a localized string.



## Discussion

To add a text label to an accessory family widget, call this method on the widget’s main SwiftUI view, and pass in a supported `LocalizedStringResource`. The system determines whether it can use the text label. If it can’t, it ignores the label. The system also sets the label’s size, placement, and style based on the clock face. For example, setting the font and rendering the text along a curve.

The following widget families support text accessory labels:

- The [accessory Corner](/documentation/WidgetKit/WidgetFamily/accessoryCorner) widget-based complication can display a curved text label on the inside edge of the corner. Adding a label to an accessory corner complication causes the main SwiftUI view to shrink to make space for the label.
- The [accessory Circular](/documentation/WidgetKit/WidgetFamily/accessoryCircular) widget can display a text label in watchOS; however, WidgetKit only renders the label along the bezel on the Infograph watch face (the top circular complication).

## Labeling a widget

- [widgetLabel(label:)](/documentation/swiftui/view/widgetlabel(label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
