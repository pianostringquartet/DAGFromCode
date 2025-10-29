---
title: buildEither(first:)
description: Creates a row result for the first of two row content alternatives.
source: https://developer.apple.com/documentation/swiftui/tablerowbuilder/buildeither(first:)
timestamp: 2025-10-29T00:11:41.973Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablerowbuilder](/documentation/swiftui/tablerowbuilder)

**Type Method**

# buildEither(first:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+

> Creates a row result for the first of two row content alternatives.

```swift
static func buildEither<T, F>(first: T) -> _ConditionalContent<T, F> where Value == T.TableRowValue, T : TableRowContent, F : TableRowContent, T.TableRowValue == F.TableRowValue
```

## Discussion

This method provides support for “if” statements in multi-statement closures, producing conditional content for the “then” branch.

## Building a row from conditionals

- [buildIf(_:)](/documentation/swiftui/tablerowbuilder/buildif(_:))
- [buildEither(second:)](/documentation/swiftui/tablerowbuilder/buildeither(second:))
- [buildExpression(_:)](/documentation/swiftui/tablerowbuilder/buildexpression(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
