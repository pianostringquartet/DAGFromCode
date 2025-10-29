---
title: WidgetConfiguration
description: A type that describes a widget’s content.
source: https://developer.apple.com/documentation/swiftui/widgetconfiguration
timestamp: 2025-10-29T00:13:51.327Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# WidgetConfiguration

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+, watchOS 9.0+

> A type that describes a widget’s content.

```swift
@MainActor @preconcurrency protocol WidgetConfiguration
```

## Overview

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

## Conforming Types

- [EmptyWidgetConfiguration](/documentation/swiftui/emptywidgetconfiguration)
- [LimitedAvailabilityConfiguration](/documentation/swiftui/limitedavailabilityconfiguration)

## Implementing a widget

- [body](/documentation/swiftui/widgetconfiguration/body-swift.property) The content and behavior of this widget.
- [Body](/documentation/swiftui/widgetconfiguration/body-swift.associatedtype) The type of widget configuration representing the body of this configuration.

## Setting a name

- [configurationDisplayName(_:)](/documentation/swiftui/widgetconfiguration/configurationdisplayname(_:)) Sets the localized name shown for a widget when a user adds or edits the widget.

## Setting a description

- [description(_:)](/documentation/swiftui/widgetconfiguration/description(_:)) Sets the description shown for a widget when a user adds or edits it using the contents of a text view.

## Setting the appearance

- [supportedFamilies(_:)](/documentation/swiftui/widgetconfiguration/supportedfamilies(_:)) Sets the sizes that a widget supports.
- [contentMarginsDisabled()](/documentation/swiftui/widgetconfiguration/contentmarginsdisabled()) Disable default content margins.
- [disfavoredLocations(_:for:)](/documentation/swiftui/widgetconfiguration/disfavoredlocations(_:for:)) Sets the disfavored locations for a widget.
- [containerBackgroundRemovable(_:)](/documentation/swiftui/widgetconfiguration/containerbackgroundremovable(_:)) A modifier that marks the background of a widget as removable.

## Managing background tasks

- [backgroundTask(_:action:)](/documentation/swiftui/widgetconfiguration/backgroundtask(_:action:)) Runs the given action when the system provides a background task.
- [onBackgroundURLSessionEvents(matching:_:)](/documentation/swiftui/widgetconfiguration/onbackgroundurlsessionevents(matching:_:)) Adds an action to perform when events related to a URL session identified by a closure are waiting to be processed.

## Instance Methods

- [associatedKind(_:)](/documentation/swiftui/widgetconfiguration/associatedkind(_:)) Tells the system that a relevance-based widget can replace a timeline-based widget.
- [promptsForUserConfiguration()](/documentation/swiftui/widgetconfiguration/promptsforuserconfiguration()) Specifies that a widget’s configuration UI should be automatically presented after the widget is added.
- [pushHandler(_:)](/documentation/swiftui/widgetconfiguration/pushhandler(_:)) Register a type that can handle push tokens changing for widgets.
- [supplementalActivityFamilies(_:)](/documentation/swiftui/widgetconfiguration/supplementalactivityfamilies(_:)) Sets the sizes that a Live Activity supports.
- [supportedMountingStyles(_:)](/documentation/swiftui/widgetconfiguration/supportedmountingstyles(_:)) Specifies the mounting style for this widget.
- [widgetTexture(_:)](/documentation/swiftui/widgetconfiguration/widgettexture(_:)) Specifies the widget texture for this widget.

## Creating widgets

- [Building Widgets Using WidgetKit and SwiftUI](/documentation/widgetkit/building_widgets_using_widgetkit_and_swiftui)
- [Creating a widget extension](/documentation/WidgetKit/Creating-a-Widget-Extension)
- [Keeping a widget up to date](/documentation/WidgetKit/Keeping-a-Widget-Up-To-Date)
- [Making a configurable widget](/documentation/WidgetKit/Making-a-Configurable-Widget)
- [Widget](/documentation/swiftui/widget)
- [WidgetBundle](/documentation/swiftui/widgetbundle)
- [LimitedAvailabilityConfiguration](/documentation/swiftui/limitedavailabilityconfiguration)
- [EmptyWidgetConfiguration](/documentation/swiftui/emptywidgetconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
