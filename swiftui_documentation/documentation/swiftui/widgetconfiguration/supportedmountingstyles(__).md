---
title: supportedMountingStyles(_:)
description: Specifies the mounting style for this widget.
source: https://developer.apple.com/documentation/swiftui/widgetconfiguration/supportedmountingstyles(_:)
timestamp: 2025-10-29T00:15:35.241Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [widgetconfiguration](/documentation/swiftui/widgetconfiguration)

**Instance Method**

# supportedMountingStyles(_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, visionOS 26.0+

> Specifies the mounting style for this widget.

```swift
@MainActor @preconcurrency func supportedMountingStyles(_ styles: [WidgetMountingStyle]) -> some WidgetConfiguration
```

## Parameters

**styles**

The set of mounting styles that the widget supports.



## Return Value

A widget configuration that supports the specified mounting styles.

## Discussion

The mounting style view modifier only has an effect to widgets in visionOS, including widgets of compatible widgets of compatible iOS or iPadOS apps.

```swift
struct MySpatialWidget: Widget {
     let kind: String = "MySpatialWidget"

     var body: some WidgetConfiguration {
         AppIntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
             EntryView(entry: entry)
                .containerBackground(.fill.tertiary, for: .widget)
         }
         .supportedFamilies([.systemSmall, .systemLarge])
         .supportedMountingStyles([.recessed])
     }
}
```

The above code defines a widget that only supports the recessed mounting style.

The mounting style view modifier only has an effect to widgets in visionOS, including widgets of compatible widgets of compatible iOS or iPadOS apps.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
