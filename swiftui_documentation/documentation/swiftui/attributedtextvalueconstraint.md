---
title: AttributedTextValueConstraint
description: A protocol for defining a constraint on the value of a certain attribute.
source: https://developer.apple.com/documentation/swiftui/attributedtextvalueconstraint
timestamp: 2025-10-29T00:14:53.637Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# AttributedTextValueConstraint

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> A protocol for defining a constraint on the value of a certain attribute.

```swift
protocol AttributedTextValueConstraint : Hashable, Sendable, AttributedTextFormattingDefinition
```

## Overview

Used as an [Attributed Text Formatting Definition](/documentation/swiftui/attributedtextformattingdefinition), this constrains the [Attribute Key](/documentation/swiftui/attributedtextvalueconstraint/attributekey)’s value using the `constrain(_:)-(Attributes)` function.

Given value constraints can read other attribute values, it is crucial to avoid mixing value constraints in a way where they create cyclic dependencies with undefined behavior. Thus, it is recommended to think about value constraints in the context of the [Attributed Text Formatting Definition](/documentation/swiftui/attributedtextformattingdefinition) they will be used in:

A simple constraint only accesses a single attribute. It can be made generic over the attribute scope so it can be reused in different [Attributed Text Formatting Definition](/documentation/swiftui/attributedtextformattingdefinition)s.

```swift
struct NoBlackOrWhiteForeground<Scope: AttributeScope>: AttributedTextValueConstraint {
    typealias AttributeKey = AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute

    func constrain(
        _ container: inout Attributes
    ) {
        if container.foregroundColor == .white || container.foregroundColor == .black {
            container.foregroundColor = .primary
        }
    }
}
```

When the constraint needs to access other attribute values, it is recommended to define it on a specific attribute scope that is used for a single [Attributed Text Formatting Definition](/documentation/swiftui/attributedtextformattingdefinition).

```swift
extension MyTextFormattingDefinition {
    struct Scope: AttributeScope {
        /* ... */
        let foregroundColor: AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute
        let backgroundColor: AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute
    }
}

struct NoEqualForegroundAndBackground: AttributedTextValueConstraint {
    typealias Scope = MyTextFormattingDefinition.Scope
    typealias AttributeKey = AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute

    func constrain(
        _ container: inout Attributes
    ) {
        if let color = container.foregroundColor,
           container.backgroundColor == color
        {
            container.backgroundColor = nil
        }
    }
}
```

Constraints that access multiple attributes and are generic over the scope should document their dependencies so that the dependencies can be considered for the ordering of constraints in the [body](/documentation/swiftui/attributedtextformattingdefinition/body-1b01t).

```swift
/// Makes the background color for all Genmoji blue.
///
/// - Note: This constraint depends on a valid adaptiveImageGlyph value.
struct BlueGenmojiBackgroundConstraint<Scope: AttributeScope>: AttributedTextValueConstraint {
    typealias AttributeKey = AttributeScopes.SwiftUIAttributes
        .BackgroundColorAttribute

    func constrain(
        _ container: inout Attributes
    ) {
        if container[
            AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute.self
        ] != nil {
            container.backgroundColor = .blue
        }
    }
}
```

## Inherits From

- [AttributedTextFormattingDefinition](/documentation/swiftui/attributedtextformattingdefinition)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Conforming Types

- [AttributedTextFormatting.ValueConstraint](/documentation/swiftui/attributedtextformatting/valueconstraint)

## Associated Types

- [AttributeKey](/documentation/swiftui/attributedtextvalueconstraint/attributekey) The attribute constrained by this constraint.

## Instance Methods

- [constrain(_:)](/documentation/swiftui/attributedtextvalueconstraint/constrain(_:)) Enforce constraints on the attribute.

## Type Aliases

- [AttributedTextValueConstraint.Attributes](/documentation/swiftui/attributedtextvalueconstraint/attributes) A proxy type for a container of partially constrained attributes.

## Controlling text style

- [bold(_:)](/documentation/swiftui/view/bold(_:))
- [italic(_:)](/documentation/swiftui/view/italic(_:))
- [underline(_:pattern:color:)](/documentation/swiftui/view/underline(_:pattern:color:))
- [strikethrough(_:pattern:color:)](/documentation/swiftui/view/strikethrough(_:pattern:color:))
- [textCase(_:)](/documentation/swiftui/view/textcase(_:))
- [textCase](/documentation/swiftui/environmentvalues/textcase)
- [monospaced(_:)](/documentation/swiftui/view/monospaced(_:))
- [monospacedDigit()](/documentation/swiftui/view/monospaceddigit())
- [AttributedTextFormattingDefinition](/documentation/swiftui/attributedtextformattingdefinition)
- [AttributedTextFormatting](/documentation/swiftui/attributedtextformatting)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
