---
title: TableStyle
description: A type that applies a custom appearance to all tables within a view.
source: https://developer.apple.com/documentation/swiftui/tablestyle
timestamp: 2025-10-29T00:11:53.290Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# TableStyle

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 12.0+, visionOS 1.0+

> A type that applies a custom appearance to all tables within a view.

```swift
@MainActor @preconcurrency protocol TableStyle
```

## Overview

To configure the current table style for a view hierarchy, use the [tableStyle(_:)](/documentation/swiftui/view/tablestyle(_:)) modifier.

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

- [AutomaticTableStyle](/documentation/swiftui/automatictablestyle)
- [BorderedTableStyle](/documentation/swiftui/borderedtablestyle)
- [InsetTableStyle](/documentation/swiftui/insettablestyle)

## Getting built-in table styles

- [automatic](/documentation/swiftui/tablestyle/automatic) The default table style in the current context.
- [inset](/documentation/swiftui/tablestyle/inset) The table style that describes the behavior and appearance of a table with its content and selection inset from the table edges.
- [bordered](/documentation/swiftui/tablestyle/bordered) The table style that describes the behavior and appearance of a table with standard border.

## Creating custom table styles

- [makeBody(configuration:)](/documentation/swiftui/tablestyle/makebody(configuration:)) Creates a view that represents the body of a table.
- [TableStyle.Configuration](/documentation/swiftui/tablestyle/configuration) The properties of a table.
- [Body](/documentation/swiftui/tablestyle/body) A view that represents the body of a table.

## Deprecated styles

- [inset(alternatesRowBackgrounds:)](/documentation/swiftui/tablestyle/inset(alternatesrowbackgrounds:)) The table style that describes the behavior and appearance of a table with its content and selection inset from the table edges.
- [bordered(alternatesRowBackgrounds:)](/documentation/swiftui/tablestyle/bordered(alternatesrowbackgrounds:)) The table style that describes the behavior and appearance of a table with standard border.

## Supporting types

- [AutomaticTableStyle](/documentation/swiftui/automatictablestyle) The default table style in the current context.
- [InsetTableStyle](/documentation/swiftui/insettablestyle) The table style that describes the behavior and appearance of a table with its content and selection inset from the table edges.
- [BorderedTableStyle](/documentation/swiftui/borderedtablestyle) The table style that describes the behavior and appearance of a table with standard border.

## Styling collection views

- [listStyle(_:)](/documentation/swiftui/view/liststyle(_:))
- [ListStyle](/documentation/swiftui/liststyle)
- [tableStyle(_:)](/documentation/swiftui/view/tablestyle(_:))
- [TableStyleConfiguration](/documentation/swiftui/tablestyleconfiguration)
- [disclosureGroupStyle(_:)](/documentation/swiftui/view/disclosuregroupstyle(_:))
- [DisclosureGroupStyle](/documentation/swiftui/disclosuregroupstyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
