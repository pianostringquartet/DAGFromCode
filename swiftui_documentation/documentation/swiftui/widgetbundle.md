---
title: WidgetBundle
description: A container used to expose multiple widgets from a single widget extension.
source: https://developer.apple.com/documentation/swiftui/widgetbundle
timestamp: 2025-10-29T00:13:20.869Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# WidgetBundle

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+, watchOS 9.0+

> A container used to expose multiple widgets from a single widget extension.

```swift
@MainActor @preconcurrency protocol WidgetBundle
```

## Overview

To support multiple types of widgets, add the `@main` attribute to a structure that conforms to `WidgetBundle`. For example, a game might have one widget to display summary information about the game and a second widget to display detailed information about individual characters.

```swift
@main
struct GameWidgets: WidgetBundle {
   var body: some Widget {
       GameStatusWidget()
       CharacterDetailWidget()
   }
}
```

## Implementing a widget bundle

- [body](/documentation/swiftui/widgetbundle/body-swift.property) Declares the group of widgets that an app supports.
- [Body](/documentation/swiftui/widgetbundle/body-swift.associatedtype) The type of widget that represents the content of the bundle.
- [WidgetBundleBuilder](/documentation/swiftui/widgetbundlebuilder) A custom attribute that constructs a widget bundle’s body.

## Running a widget bundle

- [init()](/documentation/swiftui/widgetbundle/init()) Creates a widget bundle using the bundle’s body as its content.
- [main()](/documentation/swiftui/widgetbundle/main()) Initializes and runs the widget bundle.

## Creating widgets

- [Building Widgets Using WidgetKit and SwiftUI](/documentation/widgetkit/building_widgets_using_widgetkit_and_swiftui)
- [Creating a widget extension](/documentation/WidgetKit/Creating-a-Widget-Extension)
- [Keeping a widget up to date](/documentation/WidgetKit/Keeping-a-Widget-Up-To-Date)
- [Making a configurable widget](/documentation/WidgetKit/Making-a-Configurable-Widget)
- [Widget](/documentation/swiftui/widget)
- [LimitedAvailabilityConfiguration](/documentation/swiftui/limitedavailabilityconfiguration)
- [WidgetConfiguration](/documentation/swiftui/widgetconfiguration)
- [EmptyWidgetConfiguration](/documentation/swiftui/emptywidgetconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
