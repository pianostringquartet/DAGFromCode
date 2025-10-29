---
title: widgetLabel(label:)
description: Creates a label for displaying additional content outside an accessory family widget’s main SwiftUI view.
source: https://developer.apple.com/documentation/swiftui/view/widgetlabel(label:)
timestamp: 2025-10-29T00:10:54.204Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# widgetLabel(label:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, visionOS 26.0+, watchOS 9.0+

> Creates a label for displaying additional content outside an accessory family widget’s main SwiftUI view.

```swift
@MainActor @preconcurrency func widgetLabel<Label>(@ViewBuilder label: () -> Label) -> some View where Label : View
```

## Parameters

**label**

A view that WidgetKit can display alongside the accessory family widget’s main SwiftUI view. You can use a [Image](/documentation/SwiftUI/Image), [Text](/documentation/SwiftUI/Text), [Gauge](/documentation/SwiftUI/Gauge), [Progress View](/documentation/SwiftUI/ProgressView), or a container with multiple subviews.



## Discussion

The system only displays labels on widget-based complications in watchOS. The system ignores any labels attached to widgets on the Lock Screen on iPhone. Therefore, you can use the same code to display an accessory family widget on both iPhone and Apple Watch.

To create the widget label, call `widgetLabel(label:)`on a complication’s main SwiftUI view. Pass the desired content as the `label` parameter. The label can be a [Gauge](/documentation/SwiftUI/Gauge), [Progress View](/documentation/SwiftUI/ProgressView), [Text](/documentation/SwiftUI/Text), or [Image](/documentation/SwiftUI/Image). To provide multiple views, wrap your views in a container, such as a [VStack](/documentation/SwiftUI/VStack). WidgetKit determines whether it can use any of the label’s content. If it can’t, it ignores the label.

```swift

  struct Complication: View {
      @Environment(\.widgetFamily) var widgetFamily

      var body: some View {
          switch widgetFamily {
          case .accessoryCorner:
              Text("Hi")
                  .widgetLabel {
                      Gauge(value: 0.8)
                  }
          case .accessoryCircular:
              VStack {
                  Image(systemName: "emoji.globe")
                  Text("Hi")
              }
              .widgetLabel("World!")
          case .accessoryInline:
              Text("\(Image(systemName: "emoji.globe.face")) World!")
      }
  }

```

WidgetKit configures the label so that the watch face presents a unified look. For example, it sets the size for an image, the font for text, and can even render text and gauges along a curve.

The following widget families support widget labels:

However, WidgetKit only renders the label along the bezel on the Infograph watch face (the top circular complication). On all other circular complications — including widgets on all other platforms — WidgetKit ignores the label.

## Labeling a widget

- [widgetLabel(_:)](/documentation/swiftui/view/widgetlabel(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
