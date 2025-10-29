---
title: buildEither(second:)
source: https://developer.apple.com/documentation/swiftui/attributedtextformatting/definitionbuilder/buildeither(second:)
timestamp: 2025-10-29T00:13:45.875Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [attributedtextformatting](/documentation/swiftui/attributedtextformatting) › [definitionbuilder](/documentation/swiftui/attributedtextformatting/definitionbuilder)

**Type Method**

# buildEither(second:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

```swift
static func buildEither<T, F>(second: F) -> _ConditionalContent<T, F> where Scope == T.Scope, T : AttributedTextFormattingDefinition, F : AttributedTextFormattingDefinition, T.Scope == F.Scope
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
