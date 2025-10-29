---
title: init(text:in:)
description: Create a transferable representation of an attributed string as interpreted in a SwiftUI environment.
source: https://developer.apple.com/documentation/swiftui/attributedtextformatting/transferable/init(text:in:)
timestamp: 2025-10-29T00:12:50.861Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [attributedtextformatting](/documentation/swiftui/attributedtextformatting) › [transferable](/documentation/swiftui/attributedtextformatting/transferable)

**Initializer**

# init(text:in:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Create a transferable representation of an attributed string as interpreted in a SwiftUI environment.

```swift
init(text: AttributedString, in environment: EnvironmentValues)
```

## Discussion

When exporting the `text` into different data formats, the transfer representation may use the given `environment` to resolve semantic attribute values, such as certain colors or fonts to concrete values. This means that depending on the representation used during transfer, some semantic information may be lost in that step.

> [!NOTE]
> The transferable representation applies the [Attributed Text Formatting Definition](/documentation/swiftui/attributedtextformattingdefinition) in the `environment` before exporting the content.

> [!NOTE]
> `View/attributedTextFormattingDefinition(_:)-uc57`, `AttributedTextValueConstraint/constrain(_:)-6cp64`

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
