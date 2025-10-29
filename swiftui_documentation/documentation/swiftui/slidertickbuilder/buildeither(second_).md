---
title: buildEither(second:)
description: Produces content for a conditional statement in a multi-statement closure when the condition is false.
source: https://developer.apple.com/documentation/swiftui/slidertickbuilder/buildeither(second:)
timestamp: 2025-10-29T00:09:44.562Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [slidertickbuilder](/documentation/swiftui/slidertickbuilder)

**Type Method**

# buildEither(second:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Produces content for a conditional statement in a multi-statement closure when the condition is false.

```swift
static func buildEither<T, F>(second: F) -> _ConditionalContent<T, F> where V == T.Value, T : SliderTickContent, F : SliderTickContent, T.Body == F.Body
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
