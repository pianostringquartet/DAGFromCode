---
title: DatePickerStyle
description: A type that specifies the appearance and interaction of all date pickers within a view hierarchy.
source: https://developer.apple.com/documentation/swiftui/datepickerstyle
timestamp: 2025-10-29T00:15:13.825Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# DatePickerStyle

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, visionOS 1.0+, watchOS 10.0+

> A type that specifies the appearance and interaction of all date pickers within a view hierarchy.

```swift
@MainActor @preconcurrency protocol DatePickerStyle
```

## Overview

To configure the current date picker style for a view hierarchy, use the [datePickerStyle(_:)](/documentation/swiftui/view/datepickerstyle(_:)) modifier.

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

- [CompactDatePickerStyle](/documentation/swiftui/compactdatepickerstyle)
- [DefaultDatePickerStyle](/documentation/swiftui/defaultdatepickerstyle)
- [FieldDatePickerStyle](/documentation/swiftui/fielddatepickerstyle)
- [GraphicalDatePickerStyle](/documentation/swiftui/graphicaldatepickerstyle)
- [StepperFieldDatePickerStyle](/documentation/swiftui/stepperfielddatepickerstyle)
- [WheelDatePickerStyle](/documentation/swiftui/wheeldatepickerstyle)

## Getting built-in date picker styles

- [automatic](/documentation/swiftui/datepickerstyle/automatic) The default style for date pickers.
- [compact](/documentation/swiftui/datepickerstyle/compact) A date picker style that displays the components in a compact, textual format.
- [field](/documentation/swiftui/datepickerstyle/field) A date picker style that displays the components in an editable field.
- [graphical](/documentation/swiftui/datepickerstyle/graphical) A date picker style that displays an interactive calendar or clock.
- [stepperField](/documentation/swiftui/datepickerstyle/stepperfield) A system style that displays the components in an editable field, with adjoining stepper that can increment/decrement the selected component.
- [wheel](/documentation/swiftui/datepickerstyle/wheel) A date picker style that displays each component as columns in a scrollable wheel.

## Creating custom date picker styles

- [makeBody(configuration:)](/documentation/swiftui/datepickerstyle/makebody(configuration:)) Returns the appearance and interaction content for a .
- [DatePickerStyleConfiguration](/documentation/swiftui/datepickerstyleconfiguration) The properties of a .
- [DatePickerStyle.Configuration](/documentation/swiftui/datepickerstyle/configuration) A type alias for the properties of a .
- [Body](/documentation/swiftui/datepickerstyle/body) A view representing the appearance and interaction of a .

## Supporting types

- [DefaultDatePickerStyle](/documentation/swiftui/defaultdatepickerstyle) The default style for date pickers.
- [CompactDatePickerStyle](/documentation/swiftui/compactdatepickerstyle) A date picker style that displays the components in a compact, textual format.
- [FieldDatePickerStyle](/documentation/swiftui/fielddatepickerstyle) A date picker style that displays the components in an editable field.
- [GraphicalDatePickerStyle](/documentation/swiftui/graphicaldatepickerstyle) A date picker style that displays an interactive calendar or clock.
- [StepperFieldDatePickerStyle](/documentation/swiftui/stepperfielddatepickerstyle) A system style that displays the components in an editable field, with adjoining stepper that can increment/decrement the selected component.
- [WheelDatePickerStyle](/documentation/swiftui/wheeldatepickerstyle) A date picker style that displays each component as columns in a scrollable wheel.

## Styling pickers

- [pickerStyle(_:)](/documentation/swiftui/view/pickerstyle(_:))
- [PickerStyle](/documentation/swiftui/pickerstyle)
- [datePickerStyle(_:)](/documentation/swiftui/view/datepickerstyle(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
