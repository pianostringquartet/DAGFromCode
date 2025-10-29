---
title: ControlWidgetTemplate
description: A type that describes a control widget’s content.
source: https://developer.apple.com/documentation/swiftui/controlwidgettemplate
timestamp: 2025-10-29T00:11:56.026Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# ControlWidgetTemplate

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 26.0+, watchOS 26.0+

> A type that describes a control widget’s content.

```swift
@MainActor @preconcurrency protocol ControlWidgetTemplate
```

## Overview

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

## Conforming Types

- [EmptyControlWidgetTemplate](/documentation/swiftui/emptycontrolwidgettemplate)

## Associated Types

- [Body](/documentation/swiftui/controlwidgettemplate/body-swift.associatedtype) The type of control widget template representing the body of this template.

## Instance Properties

- [body](/documentation/swiftui/controlwidgettemplate/body-swift.property) The content and behavior of this control widget.

## Instance Methods

- [disabled(_:)](/documentation/swiftui/controlwidgettemplate/disabled(_:)) Determines whether people can interact with this control.
- [privacySensitive(_:)](/documentation/swiftui/controlwidgettemplate/privacysensitive(_:)) Marks the control template as containing sensitive, private user data.
- [tint(_:)](/documentation/swiftui/controlwidgettemplate/tint(_:)) Sets the tint color within this control template.

## Composing control widgets

- [ControlWidget](/documentation/swiftui/controlwidget)
- [ControlWidgetConfiguration](/documentation/swiftui/controlwidgetconfiguration)
- [EmptyControlWidgetConfiguration](/documentation/swiftui/emptycontrolwidgetconfiguration)
- [ControlWidgetConfigurationBuilder](/documentation/swiftui/controlwidgetconfigurationbuilder)
- [EmptyControlWidgetTemplate](/documentation/swiftui/emptycontrolwidgettemplate)
- [ControlWidgetTemplateBuilder](/documentation/swiftui/controlwidgettemplatebuilder)
- [controlWidgetActionHint(_:)](/documentation/swiftui/view/controlwidgetactionhint(_:))
- [controlWidgetStatus(_:)](/documentation/swiftui/view/controlwidgetstatus(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
