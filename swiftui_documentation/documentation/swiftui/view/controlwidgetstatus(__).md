---
title: controlWidgetStatus(_:)
description: The status of the control described by the modified label.
source: https://developer.apple.com/documentation/swiftui/view/controlwidgetstatus(_:)
timestamp: 2025-10-29T00:15:12.921Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# controlWidgetStatus(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 26.0+, watchOS 26.0+

> The status of the control described by the modified label.

```swift
@MainActor @preconcurrency func controlWidgetStatus(_ status: LocalizedStringResource) -> some View
```

## Parameters

**status**

The localized string resource to display.



## Discussion

This text appears in Control Center when your control’s state changes. You can customize the text by applying this modifier to the control’s value label:

```swift
// Status Text: "Do Not Disturb Until This Evening" / "Do Not Disturb Disabled"
ControlWidgetToggle("Do Not Disturb", ...) { isOn in
    Image(systemName: "moon")
        .controlWidgetStatus(isOn ? "Do Not Disturb Until This Evening" : "Do Not Disturb Disabled")
}
```

## Composing control widgets

- [ControlWidget](/documentation/swiftui/controlwidget)
- [ControlWidgetConfiguration](/documentation/swiftui/controlwidgetconfiguration)
- [EmptyControlWidgetConfiguration](/documentation/swiftui/emptycontrolwidgetconfiguration)
- [ControlWidgetConfigurationBuilder](/documentation/swiftui/controlwidgetconfigurationbuilder)
- [ControlWidgetTemplate](/documentation/swiftui/controlwidgettemplate)
- [EmptyControlWidgetTemplate](/documentation/swiftui/emptycontrolwidgettemplate)
- [ControlWidgetTemplateBuilder](/documentation/swiftui/controlwidgettemplatebuilder)
- [controlWidgetActionHint(_:)](/documentation/swiftui/view/controlwidgetactionhint(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
