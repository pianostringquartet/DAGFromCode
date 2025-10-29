---
title: widgetRenderingMode
description: The widget’s rendering mode, based on where the system is displaying it.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/widgetrenderingmode
timestamp: 2025-10-29T00:12:35.944Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# widgetRenderingMode

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 26.0+, watchOS 9.0+

> The widget’s rendering mode, based on where the system is displaying it.

```swift
var widgetRenderingMode: WidgetRenderingMode { get set }
```

## Discussion

You can read the rendering mode from the environment values using this key.

```swift
@Environment(\.widgetRenderingMode) var widgetRenderingMode
```

Then modify the widget’s appearance based on the mode.

```swift
var body: some View {
    ZStack {
       switch renderingMode {
        case .fullColor:
           Text("Full color")
        case .accented:
           ZStack {
               Circle(...)
               VStack {
                   Text("Accented")
                       .widgetAccentable()
                   Text("Normal")
               }
           }
        case .vibrant:
           Text("Full color")
        default:
           ...
        }
    }
}
```

## Widgets

- [showsWidgetContainerBackground](/documentation/swiftui/environmentvalues/showswidgetcontainerbackground)
- [showsWidgetLabel](/documentation/swiftui/environmentvalues/showswidgetlabel)
- [widgetFamily](/documentation/swiftui/environmentvalues/widgetfamily)
- [widgetContentMargins](/documentation/swiftui/environmentvalues/widgetcontentmargins)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
