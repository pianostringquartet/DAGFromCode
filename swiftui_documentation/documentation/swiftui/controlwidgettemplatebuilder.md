---
title: ControlWidgetTemplateBuilder
description: A custom attribute that constructs a control widget template’s body.
source: https://developer.apple.com/documentation/swiftui/controlwidgettemplatebuilder
timestamp: 2025-10-29T00:15:19.009Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ControlWidgetTemplateBuilder

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 26.0+, watchOS 26.0+

> A custom attribute that constructs a control widget template’s body.

```swift
@resultBuilder struct ControlWidgetTemplateBuilder
```

## Overview

The `@ControlWidgetTemplateBuilder` attribute allows your control template’s body closure to produce a control template after zero or more other statements:

```swift
struct GarageDoorOpener: ControlWidget {
    var body: some ControlWidgetConfiguration {
        let kind = "com.yourcompany.GarageDoorOpener"

        StaticControlConfiguration(
            kind: kind
        ) {
            let isOpen = ...

            ControlWidgetToggle(
                "Garage Door",
                isOn: isOpen,
                action: ToggleGarageDoor()
            ) {
                Label(
                    $0 ? "Open" : "Closed",
                    systemImage: $0 ?
                        "door.garage.open" : "door.garage.closed"
                )
            }
        }
    }
}
```

## Type Methods

- [buildBlock(_:)](/documentation/swiftui/controlwidgettemplatebuilder/buildblock(_:)) Passes a single control widget template written as a child view through unmodified.
- [buildExpression(_:)](/documentation/swiftui/controlwidgettemplatebuilder/buildexpression(_:)) Builds an expression within the builder.

## Composing control widgets

- [ControlWidget](/documentation/swiftui/controlwidget)
- [ControlWidgetConfiguration](/documentation/swiftui/controlwidgetconfiguration)
- [EmptyControlWidgetConfiguration](/documentation/swiftui/emptycontrolwidgetconfiguration)
- [ControlWidgetConfigurationBuilder](/documentation/swiftui/controlwidgetconfigurationbuilder)
- [ControlWidgetTemplate](/documentation/swiftui/controlwidgettemplate)
- [EmptyControlWidgetTemplate](/documentation/swiftui/emptycontrolwidgettemplate)
- [controlWidgetActionHint(_:)](/documentation/swiftui/view/controlwidgetactionhint(_:))
- [controlWidgetStatus(_:)](/documentation/swiftui/view/controlwidgetstatus(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
