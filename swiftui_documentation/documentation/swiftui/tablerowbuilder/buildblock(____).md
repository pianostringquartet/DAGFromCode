---
title: buildBlock(_:_:)
description: Creates a row result from two sources.
source: https://developer.apple.com/documentation/swiftui/tablerowbuilder/buildblock(_:_:)
timestamp: 2025-10-29T00:10:56.585Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablerowbuilder](/documentation/swiftui/tablerowbuilder)

**Type Method**

# buildBlock(_:_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 12.0+, visionOS 1.0+

> Creates a row result from two sources.

```swift
static func buildBlock<C0, C1>(_ c0: C0, _ c1: C1) -> TupleTableRowContent<Value, (C0, C1)> where Value == C0.TableRowValue, C0 : TableRowContent, C1 : TableRowContent, C0.TableRowValue == C1.TableRowValue
```

## Building a row from sources

- [buildBlock(_:)](/documentation/swiftui/tablerowbuilder/buildblock(_:))
- [buildBlock(_:_:_:)](/documentation/swiftui/tablerowbuilder/buildblock(_:_:_:))
- [buildBlock(_:_:_:_:)](/documentation/swiftui/tablerowbuilder/buildblock(_:_:_:_:))
- [buildBlock(_:_:_:_:_:)](/documentation/swiftui/tablerowbuilder/buildblock(_:_:_:_:_:))
- [buildBlock(_:_:_:_:_:_:)](/documentation/swiftui/tablerowbuilder/buildblock(_:_:_:_:_:_:))
- [buildBlock(_:_:_:_:_:_:_:)](/documentation/swiftui/tablerowbuilder/buildblock(_:_:_:_:_:_:_:))
- [buildBlock(_:_:_:_:_:_:_:_:)](/documentation/swiftui/tablerowbuilder/buildblock(_:_:_:_:_:_:_:_:))
- [buildBlock(_:_:_:_:_:_:_:_:_:)](/documentation/swiftui/tablerowbuilder/buildblock(_:_:_:_:_:_:_:_:_:))
- [buildBlock(_:_:_:_:_:_:_:_:_:_:)](/documentation/swiftui/tablerowbuilder/buildblock(_:_:_:_:_:_:_:_:_:_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
