---
title: buildEither(second:)
description: Produces content for a conditional statement in a multi-statement closure when the condition is false.
source: https://developer.apple.com/documentation/swiftui/viewbuilder/buildeither(second:)
timestamp: 2025-10-29T00:14:48.210Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [viewbuilder](/documentation/swiftui/viewbuilder)

**Type Method**

# buildEither(second:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Produces content for a conditional statement in a multi-statement closure when the condition is false.

```swift
static func buildEither<TrueContent, FalseContent>(second: FalseContent) -> _ConditionalContent<TrueContent, FalseContent> where TrueContent : View, FalseContent : View
```

## Conditionally building content

- [buildEither(first:)](/documentation/swiftui/viewbuilder/buildeither(first:))
- [buildIf(_:)](/documentation/swiftui/viewbuilder/buildif(_:))
- [buildLimitedAvailability(_:)](/documentation/swiftui/viewbuilder/buildlimitedavailability(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
