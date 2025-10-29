---
title: widgetCurvesContent(_:)
description: Displays the widget’s content along a curve if the context allows it.
source: https://developer.apple.com/documentation/swiftui/view/widgetcurvescontent(_:)
timestamp: 2025-10-29T00:14:03.594Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# widgetCurvesContent(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, visionOS 26.0+, watchOS 10.0+

> Displays the widget’s content along a curve if the context allows it.

```swift
@MainActor @preconcurrency func widgetCurvesContent(_ curvesContent: Bool = true) -> some View
```

## Parameters

**curvesContent**

A Boolean value that indicates whether the system curves the widget label’s content, if the context allows.



## Discussion

The system positions the widget’s content along a curve that follows the corner of the watch face when displaying a [accessory Corner](/documentation/WidgetKit/WidgetFamily/accessoryCorner) complication. The widget must use  a  [widgetLabel(_:)](/documentation/SwiftUI/View/widgetLabel(_:)-7wguh) modifier, and the curving effect modifies only text, SF Symbols, and images.

When displaying an `.accessoryCorner` complication, the system places the widget label on the inside of the curve, and the widget’s content on the outside, as shown below.

```swift
var body: some View {
    Text("Hi")
        .widgetCurvesContent()
        .widgetLabel("World!")
}
```



The system can also curve text, SF symbols, and image content from a [View That Fits](/documentation/SwiftUI/ViewThatFits) view.

```swift
var body: some View {
    ViewThatFits {
        Text("Hello")
        Text("Hi")
    }
    .widgetCurvesContent()
    .widgetLabel("World!")
}
```



## Widget configuration

- [widgetAccentable(_:)](/documentation/swiftui/view/widgetaccentable(_:))
- [widgetLabel(_:)](/documentation/swiftui/view/widgetlabel(_:))
- [widgetLabel(label:)](/documentation/swiftui/view/widgetlabel(label:))
- [dynamicIsland(verticalPlacement:)](/documentation/swiftui/view/dynamicisland(verticalplacement:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
