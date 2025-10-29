---
title: AttributedTextFormattingDefinition
description: A protocol for defining how text can be styled in a view.
source: https://developer.apple.com/documentation/swiftui/attributedtextformattingdefinition
timestamp: 2025-10-29T00:15:20.652Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# AttributedTextFormattingDefinition

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> A protocol for defining how text can be styled in a view.

```swift
protocol AttributedTextFormattingDefinition<Scope>
```

## Overview

A formatting definition consists of an attribute scope and a number of value constraints. It is applied to a view hierarchy using the [attributedTextFormattingDefinition(_:)](/documentation/swiftui/view/attributedtextformattingdefinition(_:)-81jn6) view modifier and affects nested [Text](/documentation/swiftui/text) and [Text Editor](/documentation/swiftui/texteditor) views when initialized with [Attributed String](/documentation/Foundation/AttributedString).

Create a formatting definition by first choosing an attribute scope that contains all attributes relevant for your view. All other attributes will be ignored by value constraints and by the affected views.

Use the `Foundation/AttributeScopes/SwiftUIAttributes` for the default set of attributes supported by SwiftUI. You can create your own scope only listing out a subset of the attributes in SwiftUI’s attribute scope. You can also include custom attributes in your scope. This allows you to take advantage of advanced attributed string features, such as [run Boundaries](/documentation/Foundation/AttributedStringKey/runBoundaries).

Custom attributes also allow you to separate semantic information stored on the text, e.g. the information that a sequence of characters refers a specific person in contacts, from how this part of the text is to be formatted, e.g. with the foreground color “purple”. The rules defining what values attributes can have, are called [Attributed Text Value Constraint](/documentation/swiftui/attributedtextvalueconstraint)s.

```swift
struct ContactsArePurple: AttributedTextValueConstraint {
    typealias Scope = MyScope
    typealias AttributeKey = Scope.ForegroundColorAttribute

    func constrain(_ container: inout Attributes) {
        if container.annotation == .contact {
            container.foregroundColor = .purple
        } else {
            container.foregroundColor = nil
        }
    }
}
```

While associating formatting with custom semantic attributes is one important use case, value constraints are a generic mechanism for constraining the formatting that is available in a text editor - with or without dependencies on other attributes. For example, a value constraint could also be used to only allow a single, solid underline, but not a double underline or a dashed underline.

SwiftUI validates formatting UI provided by the system to the user to make sure only controls that are compatible with your formatting definition and its constraints are visible and enabled. If the system formatting UI does not provide sufficient utility based on your formatting definition, or you provide custom UI that is better tailored to your text editing experience, consider hiding the system-provided UI using the [textInputFormattingControlVisibility(_:for:)](/documentation/swiftui/view/textinputformattingcontrolvisibility(_:for:)) view modifier.

To declare the attributed text formatting definition, specify the attribute scope in the generic of the [body](/documentation/swiftui/attributedtextformattingdefinition/body-1b01t)’s type, and list all value constraints inside the [body](/documentation/swiftui/attributedtextformattingdefinition/body-1b01t) using result builder syntax:

```swift
struct MyTextFormattingDefinition: AttributedTextFormattingDefinition {
    var body: some AttributedTextFormattingDefinition<
        AttributeScopes.SwiftUIAttributes
    > {
        ValueConstraint(
            for: \.underlineStyle,
            values: [nil, .single],
            default: .single)
        MyAttributedTextValueConstraint()
        ContactsArePurple()
    }
}
```

Use the [attributedTextFormattingDefinition(_:)](/documentation/swiftui/view/attributedtextformattingdefinition(_:)-81jn6) view modifier to apply the definition to a view.

## Inherited By

- [AttributedTextValueConstraint](/documentation/swiftui/attributedtextvalueconstraint)

## Conforming Types

- [AttributedTextFormatting.AnyDefinition](/documentation/swiftui/attributedtextformatting/anydefinition)
- [AttributedTextFormatting.EmptyDefinition](/documentation/swiftui/attributedtextformatting/emptydefinition)
- [AttributedTextFormatting.TupleDefinition](/documentation/swiftui/attributedtextformatting/tupledefinition)
- [AttributedTextFormatting.ValueConstraint](/documentation/swiftui/attributedtextformatting/valueconstraint)

## Associated Types

- [Body](/documentation/swiftui/attributedtextformattingdefinition/body-swift.associatedtype) The type of view representing the body of this formatting definition.
- [Scope](/documentation/swiftui/attributedtextformattingdefinition/scope) The text formatting definition only allows usage of attributes in this attribute scope.

## Instance Properties

- [body](/documentation/swiftui/attributedtextformattingdefinition/body-1b01t) The constraints of the formatting definition.

## Instance Methods

- [constrain(_:)](/documentation/swiftui/attributedtextformattingdefinition/constrain(_:)) Applies all value constraints to a given attribute container.

## Type Aliases

- [AttributedTextFormattingDefinition.ValueConstraint](/documentation/swiftui/attributedtextformattingdefinition/valueconstraint) A text formatting definition that permits a single attribute to be used, optionally constrained to a set of values.

## Controlling text style

- [bold(_:)](/documentation/swiftui/view/bold(_:))
- [italic(_:)](/documentation/swiftui/view/italic(_:))
- [underline(_:pattern:color:)](/documentation/swiftui/view/underline(_:pattern:color:))
- [strikethrough(_:pattern:color:)](/documentation/swiftui/view/strikethrough(_:pattern:color:))
- [textCase(_:)](/documentation/swiftui/view/textcase(_:))
- [textCase](/documentation/swiftui/environmentvalues/textcase)
- [monospaced(_:)](/documentation/swiftui/view/monospaced(_:))
- [monospacedDigit()](/documentation/swiftui/view/monospaceddigit())
- [AttributedTextValueConstraint](/documentation/swiftui/attributedtextvalueconstraint)
- [AttributedTextFormatting](/documentation/swiftui/attributedtextformatting)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
