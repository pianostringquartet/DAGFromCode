---
title: buildEither(first:)
description: Produces content for a conditional statement in a multi-statement closure when the condition is true.
source: https://developer.apple.com/documentation/swiftui/viewbuilder/buildeither(first:)
timestamp: 2025-10-29T00:09:54.341Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [viewbuilder](/documentation/swiftui/viewbuilder)

**Type Method**

# buildEither(first:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Produces content for a conditional statement in a multi-statement closure when the condition is true.

```swift
static func buildEither<TrueContent, FalseContent>(first: TrueContent) -> _ConditionalContent<TrueContent, FalseContent> where TrueContent : View, FalseContent : View
```

## Conditionally building content

- [buildEither(second:)](/documentation/swiftui/viewbuilder/buildeither(second:))
- [buildIf(_:)](/documentation/swiftui/viewbuilder/buildif(_:))
- [buildLimitedAvailability(_:)](/documentation/swiftui/viewbuilder/buildlimitedavailability(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
