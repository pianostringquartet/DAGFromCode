---
title: buildBlock(_:_:_:_:)
description: Creates a row result from four sources.
source: https://developer.apple.com/documentation/swiftui/tablerowbuilder/buildblock(_:_:_:_:)
timestamp: 2025-10-29T00:10:23.830Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablerowbuilder](/documentation/swiftui/tablerowbuilder)

**Type Method**

# buildBlock(_:_:_:_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 12.0+, visionOS 1.0+

> Creates a row result from four sources.

```swift
static func buildBlock<C0, C1, C2, C3>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3) -> TupleTableRowContent<Value, (C0, C1, C2, C3)> where Value == C0.TableRowValue, C0 : TableRowContent, C1 : TableRowContent, C2 : TableRowContent, C3 : TableRowContent, C0.TableRowValue == C1.TableRowValue, C1.TableRowValue == C2.TableRowValue, C2.TableRowValue == C3.TableRowValue
```

## Building a row from sources

- [buildBlock(_:)](/documentation/swiftui/tablerowbuilder/buildblock(_:))
- [buildBlock(_:_:)](/documentation/swiftui/tablerowbuilder/buildblock(_:_:))
- [buildBlock(_:_:_:)](/documentation/swiftui/tablerowbuilder/buildblock(_:_:_:))
- [buildBlock(_:_:_:_:_:)](/documentation/swiftui/tablerowbuilder/buildblock(_:_:_:_:_:))
- [buildBlock(_:_:_:_:_:_:)](/documentation/swiftui/tablerowbuilder/buildblock(_:_:_:_:_:_:))
- [buildBlock(_:_:_:_:_:_:_:)](/documentation/swiftui/tablerowbuilder/buildblock(_:_:_:_:_:_:_:))
- [buildBlock(_:_:_:_:_:_:_:_:)](/documentation/swiftui/tablerowbuilder/buildblock(_:_:_:_:_:_:_:_:))
- [buildBlock(_:_:_:_:_:_:_:_:_:)](/documentation/swiftui/tablerowbuilder/buildblock(_:_:_:_:_:_:_:_:_:))
- [buildBlock(_:_:_:_:_:_:_:_:_:_:)](/documentation/swiftui/tablerowbuilder/buildblock(_:_:_:_:_:_:_:_:_:_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
