---
title: buildEither(first:)
description: Produces content for a conditional statement in a multi-statement closure when the condition is true.
source: https://developer.apple.com/documentation/swiftui/slidertickbuilder/buildeither(first:)
timestamp: 2025-10-29T00:12:27.380Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [slidertickbuilder](/documentation/swiftui/slidertickbuilder)

**Type Method**

# buildEither(first:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Produces content for a conditional statement in a multi-statement closure when the condition is true.

```swift
static func buildEither<T, F>(first: T) -> _ConditionalContent<T, F> where V == T.Value, T : SliderTickContent, F : SliderTickContent, T.Body == F.Body
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
