---
title: AttributedTextFormatting
description: A namespace for types related to attributed text formatting definitions.
source: https://developer.apple.com/documentation/swiftui/attributedtextformatting
timestamp: 2025-10-29T00:11:28.120Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Enumeration**

# AttributedTextFormatting

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> A namespace for types related to attributed text formatting definitions.

```swift
enum AttributedTextFormatting
```

## Overview

> [!NOTE]
> [Attributed Text Formatting Definition](/documentation/swiftui/attributedtextformattingdefinition), `View/attributedTextFormattingDefinition(_:)-uc57`

## Structures

- [AttributedTextFormatting.AnyDefinition](/documentation/swiftui/attributedtextformatting/anydefinition) A type-erased text formatting definition.
- [AttributedTextFormatting.AttributeContainerProxy](/documentation/swiftui/attributedtextformatting/attributecontainerproxy) A proxy for a partially validated set of attributes.
- [AttributedTextFormatting.DefinitionBuilder](/documentation/swiftui/attributedtextformatting/definitionbuilder) A result builder for attributed text formatting definition.
- [AttributedTextFormatting.EmptyDefinition](/documentation/swiftui/attributedtextformatting/emptydefinition) A text formatting definition that places no constraints on the values of attributes.
- [AttributedTextFormatting.Transferable](/documentation/swiftui/attributedtextformatting/transferable) A transferable representation of an attributed string interpreted in a SwiftUI environment.
- [AttributedTextFormatting.TupleDefinition](/documentation/swiftui/attributedtextformatting/tupledefinition) A text formatting definition that enforces the constraints of a series of text formatting definitions.
- [AttributedTextFormatting.ValueConstraint](/documentation/swiftui/attributedtextformatting/valueconstraint) A text formatting definition that constrains the value of a single attribute to the members of a set.

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
- [AttributedTextValueConstraint](/documentation/swiftui/attributedtextvalueconstraint)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
