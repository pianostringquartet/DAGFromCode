---
title: widgetContentMargins
description: A property that identifies the content margins of a widget.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/widgetcontentmargins
timestamp: 2025-10-29T00:10:35.160Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# widgetContentMargins

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 26.0+, watchOS 10.0+

> A property that identifies the content margins of a widget.

```swift
var widgetContentMargins: EdgeInsets { get }
```

## Return Value

Returns the content margins for the current widget presentation context.

## Discussion

The content margins of a widget depend on the context in which it appears. The system applies default content margins. However, if you disable automatic application of default content margins with [contentMarginsDisabled()](/documentation/SwiftUI/WidgetConfiguration/contentMarginsDisabled()), the system uses the `widgetContentMargins` property in combination with [padding(_:)](/documentation/SwiftUI/View/padding(_:)) to selectively apply default content margins.

## Widgets

- [showsWidgetContainerBackground](/documentation/swiftui/environmentvalues/showswidgetcontainerbackground)
- [showsWidgetLabel](/documentation/swiftui/environmentvalues/showswidgetlabel)
- [widgetFamily](/documentation/swiftui/environmentvalues/widgetfamily)
- [widgetRenderingMode](/documentation/swiftui/environmentvalues/widgetrenderingmode)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
