---
title: ControlWidgetConfiguration
description: A type that describes a control widget’s content.
source: https://developer.apple.com/documentation/swiftui/controlwidgetconfiguration
timestamp: 2025-10-29T00:09:23.546Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# ControlWidgetConfiguration

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 26.0+, watchOS 26.0+

> A type that describes a control widget’s content.

```swift
@MainActor @preconcurrency protocol ControlWidgetConfiguration
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

- [EmptyControlWidgetConfiguration](/documentation/swiftui/emptycontrolwidgetconfiguration)

## Associated Types

- [Body](/documentation/swiftui/controlwidgetconfiguration/body-swift.associatedtype) The type of control widget configuration representing the body of this configuration.

## Instance Properties

- [body](/documentation/swiftui/controlwidgetconfiguration/body-swift.property) The content and behavior of the control.

## Instance Methods

- [description(_:)](/documentation/swiftui/controlwidgetconfiguration/description(_:)) Sets the description shown for the control when a user adds or edits it, using the specified string.
- [displayName(_:)](/documentation/swiftui/controlwidgetconfiguration/displayname(_:)) Sets the name shown for the control when a user adds or edits it, using the specified string.
- [promptsForUserConfiguration()](/documentation/swiftui/controlwidgetconfiguration/promptsforuserconfiguration()) Specifies that a control’s configuration UI should be automatically presented after the widget is added.
- [pushHandler(_:)](/documentation/swiftui/controlwidgetconfiguration/pushhandler(_:)) Register a type that can handle push tokens changing for controls of this type.

## Composing control widgets

- [ControlWidget](/documentation/swiftui/controlwidget)
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
