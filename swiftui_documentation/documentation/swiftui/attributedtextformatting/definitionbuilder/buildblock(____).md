---
title: buildBlock(_:_:)
source: https://developer.apple.com/documentation/swiftui/attributedtextformatting/definitionbuilder/buildblock(_:_:)
timestamp: 2025-10-29T00:15:17.743Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [attributedtextformatting](/documentation/swiftui/attributedtextformatting) › [definitionbuilder](/documentation/swiftui/attributedtextformatting/definitionbuilder)

**Type Method**

# buildBlock(_:_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

```swift
static func buildBlock<F, each D>(_ first: F, _ definition: repeat each D) -> AttributedTextFormatting.TupleDefinition<F.Scope, F, repeat each D> where F : AttributedTextFormattingDefinition, repeat each D : AttributedTextFormattingDefinition
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
