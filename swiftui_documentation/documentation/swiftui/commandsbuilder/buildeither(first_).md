---
title: buildEither(first:)
description: Produces content for a conditional statement in a multi-statement closure when the condition is true.
source: https://developer.apple.com/documentation/swiftui/commandsbuilder/buildeither(first:)
timestamp: 2025-10-29T00:09:12.045Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [commandsbuilder](/documentation/swiftui/commandsbuilder)

**Type Method**

# buildEither(first:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+

> Produces content for a conditional statement in a multi-statement closure when the condition is true.

```swift
static func buildEither<T, F>(first: T) -> _ConditionalContent<T, F> where T : Commands, F : Commands
```

## Building conditionally

- [buildEither(second:)](/documentation/swiftui/commandsbuilder/buildeither(second:))
- [buildIf(_:)](/documentation/swiftui/commandsbuilder/buildif(_:))
- [buildLimitedAvailability(_:)](/documentation/swiftui/commandsbuilder/buildlimitedavailability(_:))
- [buildExpression(_:)](/documentation/swiftui/commandsbuilder/buildexpression(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
