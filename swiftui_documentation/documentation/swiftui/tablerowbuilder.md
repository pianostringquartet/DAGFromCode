---
title: TableRowBuilder
description: A result builder that creates table row content from closures.
source: https://developer.apple.com/documentation/swiftui/tablerowbuilder
timestamp: 2025-10-29T00:11:08.552Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# TableRowBuilder

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 12.0+, visionOS 1.0+

> A result builder that creates table row content from closures.

```swift
@resultBuilder struct TableRowBuilder<Value> where Value : Identifiable
```

## Overview

The `buildBlock` methods in this type create [Table Row Content](/documentation/swiftui/tablerowcontent) instances based on the number and types of sources provided as parameters.

Don’t use this type directly; instead, SwiftUI annotates the `rows` parameter of the various [Table](/documentation/swiftui/table) initializers with the `@TableRowBuilder` annotation, implicitly calling this builder for you.

## Building a row from sources

- [buildBlock(_:)](/documentation/swiftui/tablerowbuilder/buildblock(_:)) Creates a single row result.
- [buildBlock(_:_:)](/documentation/swiftui/tablerowbuilder/buildblock(_:_:)) Creates a row result from two sources.
- [buildBlock(_:_:_:)](/documentation/swiftui/tablerowbuilder/buildblock(_:_:_:)) Creates a row result from three sources.
- [buildBlock(_:_:_:_:)](/documentation/swiftui/tablerowbuilder/buildblock(_:_:_:_:)) Creates a row result from four sources.
- [buildBlock(_:_:_:_:_:)](/documentation/swiftui/tablerowbuilder/buildblock(_:_:_:_:_:)) Creates a row result from five sources.
- [buildBlock(_:_:_:_:_:_:)](/documentation/swiftui/tablerowbuilder/buildblock(_:_:_:_:_:_:)) Creates a row result from six sources.
- [buildBlock(_:_:_:_:_:_:_:)](/documentation/swiftui/tablerowbuilder/buildblock(_:_:_:_:_:_:_:)) Creates a row result from seven sources.
- [buildBlock(_:_:_:_:_:_:_:_:)](/documentation/swiftui/tablerowbuilder/buildblock(_:_:_:_:_:_:_:_:)) Creates a row result from eight sources.
- [buildBlock(_:_:_:_:_:_:_:_:_:)](/documentation/swiftui/tablerowbuilder/buildblock(_:_:_:_:_:_:_:_:_:)) Creates a row result from nine sources.
- [buildBlock(_:_:_:_:_:_:_:_:_:_:)](/documentation/swiftui/tablerowbuilder/buildblock(_:_:_:_:_:_:_:_:_:_:)) Creates a row result from ten sources.

## Building a row from conditionals

- [buildIf(_:)](/documentation/swiftui/tablerowbuilder/buildif(_:)) Creates a row result for conditional statements.
- [buildEither(first:)](/documentation/swiftui/tablerowbuilder/buildeither(first:)) Creates a row result for the first of two row content alternatives.
- [buildEither(second:)](/documentation/swiftui/tablerowbuilder/buildeither(second:)) Creates a row result for the second of two row content alternatives.
- [buildExpression(_:)](/documentation/swiftui/tablerowbuilder/buildexpression(_:)) Builds an expression within the builder.

## Creating rows

- [TableRow](/documentation/swiftui/tablerow)
- [TableRowContent](/documentation/swiftui/tablerowcontent)
- [TableHeaderRowContent](/documentation/swiftui/tableheaderrowcontent)
- [TupleTableRowContent](/documentation/swiftui/tupletablerowcontent)
- [TableForEachContent](/documentation/swiftui/tableforeachcontent)
- [EmptyTableRowContent](/documentation/swiftui/emptytablerowcontent)
- [DynamicTableRowContent](/documentation/swiftui/dynamictablerowcontent)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
