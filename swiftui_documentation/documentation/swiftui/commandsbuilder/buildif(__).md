---
title: buildIf(_:)
description: Produces an optional widget for conditional statements in multi-statement closures that’s only visible when the condition evaluates to true.
source: https://developer.apple.com/documentation/swiftui/commandsbuilder/buildif(_:)
timestamp: 2025-10-29T00:12:15.524Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [commandsbuilder](/documentation/swiftui/commandsbuilder)

**Type Method**

# buildIf(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+

> Produces an optional widget for conditional statements in multi-statement closures that’s only visible when the condition evaluates to true.

```swift
static func buildIf<C>(_ content: C?) -> C? where C : Commands
```

## Building conditionally

- [buildEither(first:)](/documentation/swiftui/commandsbuilder/buildeither(first:))
- [buildEither(second:)](/documentation/swiftui/commandsbuilder/buildeither(second:))
- [buildLimitedAvailability(_:)](/documentation/swiftui/commandsbuilder/buildlimitedavailability(_:))
- [buildExpression(_:)](/documentation/swiftui/commandsbuilder/buildexpression(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
