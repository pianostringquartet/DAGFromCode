---
title: showsWidgetLabel
description: A Boolean value that indicates whether an accessory family widget can display an accessory label.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/showswidgetlabel
timestamp: 2025-10-29T00:11:50.018Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# showsWidgetLabel

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, visionOS 26.0+, watchOS 9.0+

> A Boolean value that indicates whether an accessory family widget can display an accessory label.

```swift
var showsWidgetLabel: Bool { get set }
```

## Discussion

Use this value to determine if you can provide additional content, or possibly move some of the widget’s content out of the main view and into the widget label.

```swift

@Environment(\.widgetFamily) var widgetFamily
@Environment(\.showsWidgetLabel) var showsWidgetLabel

var body: some View {
   switch widgetFamily {
   case .accessoryCircular:
       if showsWidgetLabel {
           Image("cat_full")
               .widgetLabel(label: Text("Cats"))
       }
       else {
           VStack {
               Image("cat_small")
               Text("Cats")
           }
       }
   }
}

```

This environment value is most useful when defining the appearance for the [accessory Circular](/documentation/WidgetKit/WidgetFamily/accessoryCircular) widget family, because it’s value can change depending on where the widget appears. For example, if the widget is the top circular complication on the Infograph watch face, the value is `true`. Otherwise it is `false`. The environment variable is always `false` in iOS.

Other families always have the same value, regardless of where the widget appears. For the [accessory Corner](/documentation/WidgetKit/WidgetFamily/accessoryCorner) widget family, the value is always `true`. For other families, it is `false`.

## Widgets

- [showsWidgetContainerBackground](/documentation/swiftui/environmentvalues/showswidgetcontainerbackground)
- [widgetFamily](/documentation/swiftui/environmentvalues/widgetfamily)
- [widgetRenderingMode](/documentation/swiftui/environmentvalues/widgetrenderingmode)
- [widgetContentMargins](/documentation/swiftui/environmentvalues/widgetcontentmargins)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
