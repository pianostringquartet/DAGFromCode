---
title: controlWidgetActionHint(_:)
description: The action hint of the control described by the modified label.
source: https://developer.apple.com/documentation/swiftui/view/controlwidgetactionhint(_:)
timestamp: 2025-10-29T00:13:02.219Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# controlWidgetActionHint(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 26.0+, watchOS 26.0+

> The action hint of the control described by the modified label.

```swift
@MainActor @preconcurrency func controlWidgetActionHint(_ hint: LocalizedStringResource) -> some View
```

## Parameters

**hint**

The localized string resource to display.



## Discussion

This text will appear next to the Action Button to describe what your control will do when activated. By default, a control’s action hint is derived from its display name, the type of control, and value text, if any:

// Action Hint: “Hold for ‘Ping My Watch’” struct PingMyWatchButton: Control { static let displayName: LocalizedStringResource = “Ping My Watch” … }

// When this button’s action conforms to `OpenIntent`: // Action Hint: “Hold to Open Notes” struct NotesLauncher: Control { static let displayName: LocalizedStringResource = “Notes” … }

// Action Hint: “Hold to Turn On ‘Silent Mode’” / “Hold to Turn Off ‘Silent Mode’” struct SilentModeToggle: Control { static let displayName: LocalizedStringResource = “Silent Mode” … }

// Action Hint: “Hold for Silent” / “Hold for Ring” ControlWidgetToggle(…) { isOn in Label( isOn ? “Silent” : “Ring”, systemImage: isOn ? “bell.slash” : “bell” ) }

When the default action hint is insufficiently descriptive, you can customize the hint by applying this modifier to the control’s label. For instance, we can describe what the user will use our `NotesLauncher` control to do, “Compose a Note”, instead of the default “Hold to Open Notes” hint, like this:

ControlWidgetButton(…) { Image(systemName: “note.text”) .controlWidgetActionHint(“Compose a Note”) }

## Composing control widgets

- [ControlWidget](/documentation/swiftui/controlwidget)
- [ControlWidgetConfiguration](/documentation/swiftui/controlwidgetconfiguration)
- [EmptyControlWidgetConfiguration](/documentation/swiftui/emptycontrolwidgetconfiguration)
- [ControlWidgetConfigurationBuilder](/documentation/swiftui/controlwidgetconfigurationbuilder)
- [ControlWidgetTemplate](/documentation/swiftui/controlwidgettemplate)
- [EmptyControlWidgetTemplate](/documentation/swiftui/emptycontrolwidgettemplate)
- [ControlWidgetTemplateBuilder](/documentation/swiftui/controlwidgettemplatebuilder)
- [controlWidgetStatus(_:)](/documentation/swiftui/view/controlwidgetstatus(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
