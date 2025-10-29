---
title: ControlWidgetConfigurationBuilder
description: A custom attribute that constructs a control widget’s body.
source: https://developer.apple.com/documentation/swiftui/controlwidgetconfigurationbuilder
timestamp: 2025-10-29T00:10:32.512Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ControlWidgetConfigurationBuilder

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 26.0+, watchOS 26.0+

> A custom attribute that constructs a control widget’s body.

```swift
@resultBuilder struct ControlWidgetConfigurationBuilder
```

## Overview

The `@ControlWidgetConfigurationBuilder` attribute allows your control widget’s body closure to produce a control widget configuration after zero or more other statements:

```swift
struct GarageDoorOpener: ControlWidget {
    var body: some ControlWidgetConfiguration {
        let kind = "com.yourcompany.GarageDoorOpener"

        StaticControlConfiguration(
            kind: kind
        ) {
            ...
        }
    }
}
```

## Type Methods

- [buildBlock(_:)](/documentation/swiftui/controlwidgetconfigurationbuilder/buildblock(_:)) Passes a single control widget configuration written as a child control through unmodified.
- [buildExpression(_:)](/documentation/swiftui/controlwidgetconfigurationbuilder/buildexpression(_:)) Builds an expression within the builder.

## Composing control widgets

- [ControlWidget](/documentation/swiftui/controlwidget)
- [ControlWidgetConfiguration](/documentation/swiftui/controlwidgetconfiguration)
- [EmptyControlWidgetConfiguration](/documentation/swiftui/emptycontrolwidgetconfiguration)
- [ControlWidgetTemplate](/documentation/swiftui/controlwidgettemplate)
- [EmptyControlWidgetTemplate](/documentation/swiftui/emptycontrolwidgettemplate)
- [ControlWidgetTemplateBuilder](/documentation/swiftui/controlwidgettemplatebuilder)
- [controlWidgetActionHint(_:)](/documentation/swiftui/view/controlwidgetactionhint(_:))
- [controlWidgetStatus(_:)](/documentation/swiftui/view/controlwidgetstatus(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
