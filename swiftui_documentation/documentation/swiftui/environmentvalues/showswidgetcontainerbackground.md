---
title: showsWidgetContainerBackground
description: An environment variable that indicates whether the background of a widget appears.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/showswidgetcontainerbackground
timestamp: 2025-10-29T00:10:14.268Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# showsWidgetContainerBackground

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, visionOS 26.0+, watchOS 8.0+

> An environment variable that indicates whether the background of a widget appears.

```swift
var showsWidgetContainerBackground: Bool { get }
```

## Return Value

`true` if, by default, the background appears in this context; `false` otherwise.

## Discussion

In iOS 16 and earlier, this environment variable is always `true` for system widgets and `false` for accessory widgets. In macOS 13 and earlier, and in watchOS 9 and earlier, it always evaluates to `true`.

If you pass `false` to [containerBackgroundRemovable(_:)](/documentation/SwiftUI/WidgetConfiguration/containerBackgroundRemovable(_:)) to always show the widget background, the system shows the widget background even if `showsWidgetContainerBackground` evaluates to `true`.

## Widgets

- [showsWidgetLabel](/documentation/swiftui/environmentvalues/showswidgetlabel)
- [widgetFamily](/documentation/swiftui/environmentvalues/widgetfamily)
- [widgetRenderingMode](/documentation/swiftui/environmentvalues/widgetrenderingmode)
- [widgetContentMargins](/documentation/swiftui/environmentvalues/widgetcontentmargins)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
