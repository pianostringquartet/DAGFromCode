---
title: App extensions
description: Extend your app’s basic functionality to other parts of the system, like by adding a Widget.
source: https://developer.apple.com/documentation/swiftui/app-extensions
timestamp: 2025-10-29T00:14:21.922Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# App extensions

> Extend your app’s basic functionality to other parts of the system, like by adding a Widget.

## Overview

Use SwiftUI along with [Widget Kit](/documentation/WidgetKit) to add widgets to your app.



Widgets provide quick access to relevant content from your app. Define a structure that conforms to the [Widget](/documentation/swiftui/widget) protocol, and declare a view hierarchy for the widget. Configure the views inside the widget as you do other SwiftUI views, using view modifiers, including a few widget-specific modifiers.

For design guidance, see [widgets](/design/Human-Interface-Guidelines/widgets) in the Human Interface Guidelines.

## Creating widgets

- [Building Widgets Using WidgetKit and SwiftUI](/documentation/widgetkit/building_widgets_using_widgetkit_and_swiftui) Create widgets to show your app’s content on the Home screen, with custom intents for user-customizable settings.
- [Creating a widget extension](/documentation/WidgetKit/Creating-a-Widget-Extension) Display your app’s content in a convenient, informative widget on various devices.
- [Keeping a widget up to date](/documentation/WidgetKit/Keeping-a-Widget-Up-To-Date) Plan your widget’s timeline to show timely, relevant information using dynamic views, and update the timeline when things change.
- [Making a configurable widget](/documentation/WidgetKit/Making-a-Configurable-Widget) Give people the option to customize their widgets by adding a custom app intent to your project.
- [Widget](/documentation/swiftui/widget) The configuration and content of a widget to display on the Home screen or in Notification Center.
- [WidgetBundle](/documentation/swiftui/widgetbundle) A container used to expose multiple widgets from a single widget extension.
- [LimitedAvailabilityConfiguration](/documentation/swiftui/limitedavailabilityconfiguration) A type-erased widget configuration.
- [WidgetConfiguration](/documentation/swiftui/widgetconfiguration) A type that describes a widget’s content.
- [EmptyWidgetConfiguration](/documentation/swiftui/emptywidgetconfiguration) An empty widget configuration.

## Composing control widgets

- [ControlWidget](/documentation/swiftui/controlwidget) The configuration and content of a control widget to display in system spaces such as Control Center, the Lock Screen, and the Action Button.
- [ControlWidgetConfiguration](/documentation/swiftui/controlwidgetconfiguration) A type that describes a control widget’s content.
- [EmptyControlWidgetConfiguration](/documentation/swiftui/emptycontrolwidgetconfiguration) An empty control widget configuration.
- [ControlWidgetConfigurationBuilder](/documentation/swiftui/controlwidgetconfigurationbuilder) A custom attribute that constructs a control widget’s body.
- [ControlWidgetTemplate](/documentation/swiftui/controlwidgettemplate) A type that describes a control widget’s content.
- [EmptyControlWidgetTemplate](/documentation/swiftui/emptycontrolwidgettemplate) An empty control widget template.
- [ControlWidgetTemplateBuilder](/documentation/swiftui/controlwidgettemplatebuilder) A custom attribute that constructs a control widget template’s body.
- [controlWidgetActionHint(_:)](/documentation/swiftui/view/controlwidgetactionhint(_:)) The action hint of the control described by the modified label.
- [controlWidgetStatus(_:)](/documentation/swiftui/view/controlwidgetstatus(_:)) The status of the control described by the modified label.

## Labeling a widget

- [widgetLabel(_:)](/documentation/swiftui/view/widgetlabel(_:)) Returns a localized text label that displays additional content outside the accessory family widget’s main SwiftUI view.
- [widgetLabel(label:)](/documentation/swiftui/view/widgetlabel(label:)) Creates a label for displaying additional content outside an accessory family widget’s main SwiftUI view.

## Styling a widget group

- [accessoryWidgetGroupStyle(_:)](/documentation/swiftui/view/accessorywidgetgroupstyle(_:)) The view modifier that can be applied to  to specify the shape the three content views will be masked with. The value of  is set to , which is  by default.

## Controlling the accented group

- [widgetAccentable(_:)](/documentation/swiftui/view/widgetaccentable(_:)) Adds the view and all of its subviews to the accented group.

## Managing placement in the Dynamic Island

- [dynamicIsland(verticalPlacement:)](/documentation/swiftui/view/dynamicisland(verticalplacement:)) Specifies the vertical placement for a view of an expanded Live Activity that appears in the Dynamic Island.

## App structure

- [App organization](/documentation/swiftui/app-organization)
- [Scenes](/documentation/swiftui/scenes)
- [Windows](/documentation/swiftui/windows)
- [Immersive spaces](/documentation/swiftui/immersive-spaces)
- [Documents](/documentation/swiftui/documents)
- [Navigation](/documentation/swiftui/navigation)
- [Modal presentations](/documentation/swiftui/modal-presentations)
- [Toolbars](/documentation/swiftui/toolbars)
- [Search](/documentation/swiftui/search)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
