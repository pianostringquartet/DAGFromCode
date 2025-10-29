---
title: Controls and indicators
description: Display values and get user selections.
source: https://developer.apple.com/documentation/swiftui/controls-and-indicators
timestamp: 2025-10-29T00:12:55.527Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Controls and indicators

> Display values and get user selections.

## Overview

SwiftUI provides controls that enable user interaction specific to each platform and context. For example, people can initiate events with buttons and links, or choose among a set of discrete values with different kinds of pickers. You can also display information to the user with indicators like progress views and gauges.



Use these built-in controls and indicators when composing custom views, and style them to match the needs of your app’s user interface. For design guidance, see [menus-and](/design/Human-Interface-Guidelines/menus-and-actions), [selection-and](/design/Human-Interface-Guidelines/selection-and-input), and [status](/design/Human-Interface-Guidelines/status) in the Human Interface Guidelines.

## Creating buttons

- [Button](/documentation/swiftui/button) A control that initiates an action.
- [buttonStyle(_:)](/documentation/swiftui/view/buttonstyle(_:)) Sets the style for buttons within this view to a button style with a custom appearance and standard interaction behavior.
- [buttonBorderShape(_:)](/documentation/swiftui/view/buttonbordershape(_:)) Sets the border shape for buttons in this view.
- [buttonRepeatBehavior(_:)](/documentation/swiftui/view/buttonrepeatbehavior(_:)) Sets whether buttons in this view should repeatedly trigger their actions on prolonged interactions.
- [buttonRepeatBehavior](/documentation/swiftui/environmentvalues/buttonrepeatbehavior) Whether buttons with this associated environment should repeatedly trigger their actions on prolonged interactions.
- [ButtonBorderShape](/documentation/swiftui/buttonbordershape) A shape used to draw a button’s border.
- [ButtonRole](/documentation/swiftui/buttonrole) A value that describes the purpose of a button.
- [ButtonRepeatBehavior](/documentation/swiftui/buttonrepeatbehavior) The options for controlling the repeatability of button actions.
- [ButtonSizing](/documentation/swiftui/buttonsizing) The sizing behavior of s and other button-like controls.

## Creating special-purpose buttons

- [EditButton](/documentation/swiftui/editbutton) A button that toggles the edit mode environment value.
- [PasteButton](/documentation/swiftui/pastebutton) A system button that reads items from the pasteboard and delivers it to a closure.
- [RenameButton](/documentation/swiftui/renamebutton) A button that triggers a standard rename action.

## Linking to other content

- [Link](/documentation/swiftui/link) A control for navigating to a URL.
- [ShareLink](/documentation/swiftui/sharelink) A view that controls a sharing presentation.
- [SharePreview](/documentation/swiftui/sharepreview) A representation of a type to display in a share preview.
- [TextFieldLink](/documentation/swiftui/textfieldlink) A control that requests text input from the user when pressed.
- [HelpLink](/documentation/swiftui/helplink) A button with a standard appearance that opens app-specific help documentation.

## Getting numeric inputs

- [Slider](/documentation/swiftui/slider) A control for selecting a value from a bounded linear range of values.
- [Stepper](/documentation/swiftui/stepper) A control that performs increment and decrement actions.
- [Toggle](/documentation/swiftui/toggle) A control that toggles between on and off states.
- [toggleStyle(_:)](/documentation/swiftui/view/togglestyle(_:)) Sets the style for toggles in a view hierarchy.

## Choosing from a set of options

- [Picker](/documentation/swiftui/picker) A control for selecting from a set of mutually exclusive values.
- [pickerStyle(_:)](/documentation/swiftui/view/pickerstyle(_:)) Sets the style for pickers within this view.
- [horizontalRadioGroupLayout()](/documentation/swiftui/view/horizontalradiogrouplayout()) Sets the style for radio group style pickers within this view to be horizontally positioned with the radio buttons inside the layout.
- [defaultWheelPickerItemHeight(_:)](/documentation/swiftui/view/defaultwheelpickeritemheight(_:)) Sets the default wheel-style picker item height.
- [defaultWheelPickerItemHeight](/documentation/swiftui/environmentvalues/defaultwheelpickeritemheight) The default height of an item in a wheel-style picker, such as a date picker.
- [paletteSelectionEffect(_:)](/documentation/swiftui/view/paletteselectioneffect(_:)) Specifies the selection effect to apply to a palette item.
- [PaletteSelectionEffect](/documentation/swiftui/paletteselectioneffect) The selection effect to apply to a palette item.

## Choosing dates

- [DatePicker](/documentation/swiftui/datepicker) A control for selecting an absolute date.
- [datePickerStyle(_:)](/documentation/swiftui/view/datepickerstyle(_:)) Sets the style for date pickers within this view.
- [MultiDatePicker](/documentation/swiftui/multidatepicker) A control for picking multiple dates.
- [calendar](/documentation/swiftui/environmentvalues/calendar) The current calendar that views should use when handling dates.
- [timeZone](/documentation/swiftui/environmentvalues/timezone) The current time zone that views should use when handling dates.

## Choosing a color

- [ColorPicker](/documentation/swiftui/colorpicker) A control used to select a color from the system color picker UI.

## Indicating a value

- [Gauge](/documentation/swiftui/gauge) A view that shows a value within a range.
- [gaugeStyle(_:)](/documentation/swiftui/view/gaugestyle(_:)) Sets the style for gauges within this view.
- [ProgressView](/documentation/swiftui/progressview) A view that shows the progress toward completion of a task.
- [progressViewStyle(_:)](/documentation/swiftui/view/progressviewstyle(_:)) Sets the style for progress views in this view.
- [DefaultDateProgressLabel](/documentation/swiftui/defaultdateprogresslabel) The default type of the current value label when used by a date-relative progress view.
- [DefaultButtonLabel](/documentation/swiftui/defaultbuttonlabel) The default label to use for a button.

## Indicating missing content

- [ContentUnavailableView](/documentation/swiftui/contentunavailableview) An interface, consisting of a label and additional content, that you display when the content of your app is unavailable to users.

## Providing haptic feedback

- [sensoryFeedback(_:trigger:)](/documentation/swiftui/view/sensoryfeedback(_:trigger:)) Plays the specified  when the provided  value changes.
- [sensoryFeedback(trigger:_:)](/documentation/swiftui/view/sensoryfeedback(trigger:_:)) Plays feedback when returned from the  closure after the provided  value changes.
- [sensoryFeedback(_:trigger:condition:)](/documentation/swiftui/view/sensoryfeedback(_:trigger:condition:)) Plays the specified  when the provided  value changes and the  closure returns .
- [SensoryFeedback](/documentation/swiftui/sensoryfeedback) Represents a type of haptic and/or audio feedback that can be played.

## Sizing controls

- [controlSize(_:)](/documentation/swiftui/view/controlsize(_:)) Sets the size for controls within this view.
- [controlSize](/documentation/swiftui/environmentvalues/controlsize) The size to apply to controls within a view.
- [ControlSize](/documentation/swiftui/controlsize) The size classes, like regular or small, that you can apply to controls within a view.

## Views

- [View fundamentals](/documentation/swiftui/view-fundamentals)
- [View configuration](/documentation/swiftui/view-configuration)
- [View styles](/documentation/swiftui/view-styles)
- [Animations](/documentation/swiftui/animations)
- [Text input and output](/documentation/swiftui/text-input-and-output)
- [Images](/documentation/swiftui/images)
- [Menus and commands](/documentation/swiftui/menus-and-commands)
- [Shapes](/documentation/swiftui/shapes)
- [Drawing and graphics](/documentation/swiftui/drawing-and-graphics)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
