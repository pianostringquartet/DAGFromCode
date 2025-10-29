---
title: AttributedTextFormatting.TupleDefinition
description: A text formatting definition that enforces the constraints of a series of text formatting definitions.
source: https://developer.apple.com/documentation/swiftui/attributedtextformatting/tupledefinition
timestamp: 2025-10-29T00:10:21.253Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [attributedtextformatting](/documentation/swiftui/attributedtextformatting)

**Structure**

# AttributedTextFormatting.TupleDefinition

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> A text formatting definition that enforces the constraints of a series of text formatting definitions.

```swift
struct TupleDefinition<Scope, each Definition> where Scope : AttributeScope, repeat each Definition : AttributedTextFormattingDefinition
```

## Overview

> [!NOTE]
> All sub-definitions are required to have the same `Scope`.

## Conforms To

- [AttributedTextFormattingDefinition](/documentation/swiftui/attributedtextformattingdefinition)

## Initializers

- [init(definition:)](/documentation/swiftui/attributedtextformatting/tupledefinition/init(definition:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
