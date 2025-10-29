---
title: buildExpression(_:)
description: Builds an expression within the builder.
source: https://developer.apple.com/documentation/swiftui/commandsbuilder/buildexpression(_:)
timestamp: 2025-10-29T00:15:22.914Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [commandsbuilder](/documentation/swiftui/commandsbuilder)

**Type Method**

# buildExpression(_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> Builds an expression within the builder.

```swift
static func buildExpression<Content>(_ content: Content) -> Content where Content : Commands
```

## Building conditionally

- [buildEither(first:)](/documentation/swiftui/commandsbuilder/buildeither(first:))
- [buildEither(second:)](/documentation/swiftui/commandsbuilder/buildeither(second:))
- [buildIf(_:)](/documentation/swiftui/commandsbuilder/buildif(_:))
- [buildLimitedAvailability(_:)](/documentation/swiftui/commandsbuilder/buildlimitedavailability(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
