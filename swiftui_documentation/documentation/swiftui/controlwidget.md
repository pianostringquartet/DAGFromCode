---
title: ControlWidget
description: The configuration and content of a control widget to display in system spaces such as Control Center, the Lock Screen, and the Action Button.
source: https://developer.apple.com/documentation/swiftui/controlwidget
timestamp: 2025-10-29T00:13:25.338Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# ControlWidget

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 26.0+, watchOS 26.0+

> The configuration and content of a control widget to display in system spaces such as Control Center, the Lock Screen, and the Action Button.

```swift
@MainActor @preconcurrency protocol ControlWidget
```

## Overview

Controls allow users to quickly read the state of your app or its accessories, and take quick actions, without having to open your app. Users can add, configure, and arrange controls to suit their individual needs. You can provide multiple types of controls, each representing a specific kind of action.

There are three key components to a control:

- A configuration that determines whether the control is configurable, identifies the control, and defines the SwiftUI template that provides the control’s content.
- A value provider that defines the value of the control when being previewed and when being actually rendered
- The template used by WidgetKit to display the control.

Controls are defined using templates in order to ensure that they control will work at all sizes and in all system spaces in which they might be displayed. These templates define images (specifically, symbol images) and text using simple SwiftUI views like [Label](/documentation/swiftui/label), [Text](/documentation/swiftui/text), and [Image](/documentation/swiftui/image); and tint colors using the [tint(_:)](/documentation/swiftui/controlwidgettemplate/tint(_:)) modifier.

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

## Associated Types

- [Body](/documentation/swiftui/controlwidget/body-swift.associatedtype) The type of configuration representing the content of this control.

## Initializers

- [init()](/documentation/swiftui/controlwidget/init()) Creates a control using  as its content.

## Instance Properties

- [body](/documentation/swiftui/controlwidget/body-swift.property) The content and behavior of the control.

## Type Methods

- [main()](/documentation/swiftui/controlwidget/main())

## Composing control widgets

- [ControlWidgetConfiguration](/documentation/swiftui/controlwidgetconfiguration)
- [EmptyControlWidgetConfiguration](/documentation/swiftui/emptycontrolwidgetconfiguration)
- [ControlWidgetConfigurationBuilder](/documentation/swiftui/controlwidgetconfigurationbuilder)
- [ControlWidgetTemplate](/documentation/swiftui/controlwidgettemplate)
- [EmptyControlWidgetTemplate](/documentation/swiftui/emptycontrolwidgettemplate)
- [ControlWidgetTemplateBuilder](/documentation/swiftui/controlwidgettemplatebuilder)
- [controlWidgetActionHint(_:)](/documentation/swiftui/view/controlwidgetactionhint(_:))
- [controlWidgetStatus(_:)](/documentation/swiftui/view/controlwidgetstatus(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
