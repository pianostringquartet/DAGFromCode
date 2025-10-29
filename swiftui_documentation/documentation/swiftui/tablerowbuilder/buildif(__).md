---
title: buildIf(_:)
description: Creates a row result for conditional statements.
source: https://developer.apple.com/documentation/swiftui/tablerowbuilder/buildif(_:)
timestamp: 2025-10-29T00:09:17.885Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablerowbuilder](/documentation/swiftui/tablerowbuilder)

**Type Method**

# buildIf(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+

> Creates a row result for conditional statements.

```swift
static func buildIf<C>(_ content: C?) -> C? where Value == C.TableRowValue, C : TableRowContent
```

## Discussion

This method provides support for “if” statements in multi-statement closures, producing an optional value that is visible only when the condition evaluates to `true`.

## Building a row from conditionals

- [buildEither(first:)](/documentation/swiftui/tablerowbuilder/buildeither(first:))
- [buildEither(second:)](/documentation/swiftui/tablerowbuilder/buildeither(second:))
- [buildExpression(_:)](/documentation/swiftui/tablerowbuilder/buildexpression(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
