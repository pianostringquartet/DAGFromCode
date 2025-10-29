---
title: buildEither(second:)
description: Produces content for a conditional statement in a multi-statement closure when the condition is false.
source: https://developer.apple.com/documentation/swiftui/commandsbuilder/buildeither(second:)
timestamp: 2025-10-29T00:10:50.473Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [commandsbuilder](/documentation/swiftui/commandsbuilder)

**Type Method**

# buildEither(second:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+

> Produces content for a conditional statement in a multi-statement closure when the condition is false.

```swift
static func buildEither<T, F>(second: F) -> _ConditionalContent<T, F> where T : Commands, F : Commands
```

## Building conditionally

- [buildEither(first:)](/documentation/swiftui/commandsbuilder/buildeither(first:))
- [buildIf(_:)](/documentation/swiftui/commandsbuilder/buildif(_:))
- [buildLimitedAvailability(_:)](/documentation/swiftui/commandsbuilder/buildlimitedavailability(_:))
- [buildExpression(_:)](/documentation/swiftui/commandsbuilder/buildexpression(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
