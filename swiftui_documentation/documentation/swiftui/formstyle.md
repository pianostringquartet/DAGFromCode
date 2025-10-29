---
title: FormStyle
description: The appearance and behavior of a form.
source: https://developer.apple.com/documentation/swiftui/formstyle
timestamp: 2025-10-29T00:14:29.198Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# FormStyle

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> The appearance and behavior of a form.

```swift
@MainActor @preconcurrency protocol FormStyle
```

## Overview

To configure the style for a single [Form](/documentation/swiftui/form) or for all form instances in a view hierarchy, use the [formStyle(_:)](/documentation/swiftui/view/formstyle(_:)) modifier.

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

- [AutomaticFormStyle](/documentation/swiftui/automaticformstyle)
- [ColumnsFormStyle](/documentation/swiftui/columnsformstyle)
- [GroupedFormStyle](/documentation/swiftui/groupedformstyle)

## Getting built-in form styles

- [automatic](/documentation/swiftui/formstyle/automatic) The default form style.
- [columns](/documentation/swiftui/formstyle/columns) A non-scrolling form style with a trailing aligned column of labels next to a leading aligned column of values.
- [grouped](/documentation/swiftui/formstyle/grouped) A form style with grouped rows.

## Creating custom form styles

- [makeBody(configuration:)](/documentation/swiftui/formstyle/makebody(configuration:)) Creates a view that represents the body of a form.
- [FormStyle.Configuration](/documentation/swiftui/formstyle/configuration) The properties of a form instance.
- [Body](/documentation/swiftui/formstyle/body) A view that represents the appearance and interaction of a form.

## Supporting types

- [AutomaticFormStyle](/documentation/swiftui/automaticformstyle) The default form style.
- [ColumnsFormStyle](/documentation/swiftui/columnsformstyle) A non-scrolling form style with a trailing aligned column of labels next to a leading aligned column of values.
- [GroupedFormStyle](/documentation/swiftui/groupedformstyle) A form style with grouped rows.

## Styling groups

- [controlGroupStyle(_:)](/documentation/swiftui/view/controlgroupstyle(_:))
- [ControlGroupStyle](/documentation/swiftui/controlgroupstyle)
- [ControlGroupStyleConfiguration](/documentation/swiftui/controlgroupstyleconfiguration)
- [formStyle(_:)](/documentation/swiftui/view/formstyle(_:))
- [FormStyleConfiguration](/documentation/swiftui/formstyleconfiguration)
- [groupBoxStyle(_:)](/documentation/swiftui/view/groupboxstyle(_:))
- [GroupBoxStyle](/documentation/swiftui/groupboxstyle)
- [GroupBoxStyleConfiguration](/documentation/swiftui/groupboxstyleconfiguration)
- [indexViewStyle(_:)](/documentation/swiftui/view/indexviewstyle(_:))
- [IndexViewStyle](/documentation/swiftui/indexviewstyle)
- [labeledContentStyle(_:)](/documentation/swiftui/view/labeledcontentstyle(_:))
- [LabeledContentStyle](/documentation/swiftui/labeledcontentstyle)
- [LabeledContentStyleConfiguration](/documentation/swiftui/labeledcontentstyleconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
