---
title: buildExpression(_:)
description: Builds an expression within the builder.
source: https://developer.apple.com/documentation/swiftui/tablerowbuilder/buildexpression(_:)
timestamp: 2025-10-29T00:15:24.374Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablerowbuilder](/documentation/swiftui/tablerowbuilder)

**Type Method**

# buildExpression(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 12.0+, visionOS 1.0+

> Builds an expression within the builder.

```swift
static func buildExpression<Content>(_ content: Content) -> Content where Value == Content.TableRowValue, Content : TableRowContent
```

## Building a row from conditionals

- [buildIf(_:)](/documentation/swiftui/tablerowbuilder/buildif(_:))
- [buildEither(first:)](/documentation/swiftui/tablerowbuilder/buildeither(first:))
- [buildEither(second:)](/documentation/swiftui/tablerowbuilder/buildeither(second:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
