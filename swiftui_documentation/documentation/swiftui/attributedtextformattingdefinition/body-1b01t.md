---
title: body
description: The constraints of the formatting definition.
source: https://developer.apple.com/documentation/swiftui/attributedtextformattingdefinition/body-1b01t
timestamp: 2025-10-29T00:12:17.852Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [attributedtextformattingdefinition](/documentation/swiftui/attributedtextformattingdefinition)

**Instance Property**

# body

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> The constraints of the formatting definition.

```swift
@AttributedTextFormatting.DefinitionBuilder<Self.Scope> var body: Self.Body { get }
```

## Discussion

When you implement a custom definition, you must implement a computed `body` property to provide the constraints of your definition. Return a definition that’s composed of built-in definitions that SwiftUI provides, such as [Value Constraint](/documentation/swiftui/attributedtextformattingdefinition/valueconstraint) and [Attributed Text Value Constraint](/documentation/swiftui/attributedtextvalueconstraint)s, plus other composite [Attributed Text Formatting Definition](/documentation/swiftui/attributedtextformattingdefinition)s that you’ve already defined:

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
    }
}
```

Note that the order of the constraints in the result builder matters as constraints are applied in order. For details, see `AttributedTextValueConstraint/constrain(_:)-(Attributes)`.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
