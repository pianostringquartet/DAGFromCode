---
title: TableColumnContent
description: A type used to represent columns within a table.
source: https://developer.apple.com/documentation/swiftui/tablecolumncontent
timestamp: 2025-10-29T00:14:03.107Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# TableColumnContent

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 12.0+, visionOS 1.0+

> A type used to represent columns within a table.

```swift
@MainActor @preconcurrency protocol TableColumnContent<TableRowValue, TableColumnSortComparator>
```

## Overview

This type provides the body content of the column, as well as the types of the column’s row values and the comparator used to sort rows.

You can factor column content out into separate types or properties, or by creating a custom type conforming to `TableColumnContent`.

```swift
var body: some View {
    Table(people, selection: $selectedPeople, sortOrder: $sortOrder) {
        nameColumns

        TableColumn("Location", value: \.location) {
            LocationView($0.location)
        }
    }
}

@TableColumnBuilder<Person, KeyPathComparator<Person>>
private var nameColumns: some TableColumnContent<
    Person, KeyPathComparator<Person>
> {
    TableColumn("First Name", value: \.firstName) {
        PrimaryColumnView(person: $0)
    }
    TableColumn("Last Name", value: \.lastName)
    TableColumn("Nickname", value: \.nickname)
}
```

The above example factors three table columns into a separate computed property that has an opaque type. The property’s primary associated type `TableRowValue` is a `Person` and its associated type `TableColumnSortComparator` is a key comparator for the `Person` type.

A type conforming to this protocol inherits `@preconcurrency @MainActor` isolation from the protocol if the conformance is included in the type’s base declaration:

```swift
struct MyCustomType: Transition {
    // `@preconcurrency @MainActor` isolation by default
}
```

Isolation to the main actor is the default, but it’s not required. Declare the conformance in an extension to opt out of main actor isolation:

```swift
extension MyCustomType: Transition {
    // `nonisolated` by default
}
```

## Conforming Types

- [Group](/documentation/swiftui/group)
- [TableColumn](/documentation/swiftui/tablecolumn)
- [TableColumnForEach](/documentation/swiftui/tablecolumnforeach)
- [TupleTableColumnContent](/documentation/swiftui/tupletablecolumncontent)

## Getting the column body

- [tableColumnBody](/documentation/swiftui/tablecolumncontent/tablecolumnbody-swift.property) The composition of content that comprise the table column content.
- [TableColumnBody](/documentation/swiftui/tablecolumncontent/tablecolumnbody-swift.associatedtype) The type of content representing the body of this table column content.

## Defining the row value

- [TableRowValue](/documentation/swiftui/tablecolumncontent/tablerowvalue) The type of value of rows presented by this column content.

## Defining the comparator

- [TableColumnSortComparator](/documentation/swiftui/tablecolumncontent/tablecolumnsortcomparator) The type of sort comparator associated with this table column content.

## Configuring the content

- [alignment(_:)](/documentation/swiftui/tablecolumncontent/alignment(_:)) Sets the alignment of the column, applying to both its column header label and the row view content for that column.
- [customizationID(_:)](/documentation/swiftui/tablecolumncontent/customizationid(_:)) Sets the identifier to be associated with a column when persisting its state with .
- [defaultVisibility(_:)](/documentation/swiftui/tablecolumncontent/defaultvisibility(_:)) Sets the default visibility of a table column.
- [disabledCustomizationBehavior(_:)](/documentation/swiftui/tablecolumncontent/disabledcustomizationbehavior(_:)) Sets the disabled customization behavior for a table column.

## Creating columns

- [TableColumn](/documentation/swiftui/tablecolumn)
- [TableColumnAlignment](/documentation/swiftui/tablecolumnalignment)
- [TableColumnBuilder](/documentation/swiftui/tablecolumnbuilder)
- [TableColumnForEach](/documentation/swiftui/tablecolumnforeach)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
