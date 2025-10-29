---
title: Widget
description: The configuration and content of a widget to display on the Home screen or in Notification Center.
source: https://developer.apple.com/documentation/swiftui/widget
timestamp: 2025-10-29T00:11:44.102Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# Widget

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+, watchOS 9.0+

> The configuration and content of a widget to display on the Home screen or in Notification Center.

```swift
@MainActor @preconcurrency protocol Widget
```

## Overview

Widgets show glanceable and relevant content from your app right on the iOS Home screen or in Notification Center on macOS. Users can add, configure, and arrange widgets to suit their individual needs. You can provide multiple types of widgets, each presenting a specific kind of information. When users want more information, like to read the full article for a headline or to see the details of a package delivery, the widget lets them get to the information in your app quickly.

There are three key components to a widget:

- A configuration that determines whether the widget is configurable, identifies the widget, and defines the SwiftUI views that show the widget’s content.
- A timeline provider that drives the process of updating the widget’s view over time.
- SwiftUI views used by WidgetKit to display the widget.

For information about adding a widget extension to your app, and keeping your widget up to date, see [Creating-a-Widget](/documentation/WidgetKit/Creating-a-Widget-Extension) and [Keeping-a-Widget-Up-To](/documentation/WidgetKit/Keeping-a-Widget-Up-To-Date), respectively.

By adding a custom SiriKit intent definition, you can let users customize their widgets to show the information that’s most relevant to them. If you’ve already added support for Siri or Shortcuts, you’re well on your way to supporting customizable widgets. For more information, see [Making-a-Configurable](/documentation/WidgetKit/Making-a-Configurable-Widget).

A type conforming to this protocol inherits `@preconcurrency @MainActor` isolation from the protocol if the conformance is included in the type’s base declaration:

```swift
struct MyCustomType: Transition {
    // `@preconcurrency @MainActor` isolation by default
}
```

Isolation to the main actor is the default, but it’s not required. Declare the conformance in an extension to opt out of main actor isolation:

```swift
extension MyCustomType: Transition {
    // `nonisolated` by default
}
```

## Implementing a widget

- [body](/documentation/swiftui/widget/body-swift.property) The content and behavior of the widget.
- [Body](/documentation/swiftui/widget/body-swift.associatedtype) The type of configuration representing the content of the widget.

## Running a widget

- [init()](/documentation/swiftui/widget/init()) Creates a widget using  as its content.
- [main()](/documentation/swiftui/widget/main()) Initializes and runs the widget.

## Creating widgets

- [Building Widgets Using WidgetKit and SwiftUI](/documentation/widgetkit/building_widgets_using_widgetkit_and_swiftui)
- [Creating a widget extension](/documentation/WidgetKit/Creating-a-Widget-Extension)
- [Keeping a widget up to date](/documentation/WidgetKit/Keeping-a-Widget-Up-To-Date)
- [Making a configurable widget](/documentation/WidgetKit/Making-a-Configurable-Widget)
- [WidgetBundle](/documentation/swiftui/widgetbundle)
- [LimitedAvailabilityConfiguration](/documentation/swiftui/limitedavailabilityconfiguration)
- [WidgetConfiguration](/documentation/swiftui/widgetconfiguration)
- [EmptyWidgetConfiguration](/documentation/swiftui/emptywidgetconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
