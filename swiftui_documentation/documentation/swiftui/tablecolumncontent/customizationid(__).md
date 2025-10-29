---
title: customizationID(_:)
description: Sets the identifier to be associated with a column when persisting its state with .
source: https://developer.apple.com/documentation/swiftui/tablecolumncontent/customizationid(_:)
timestamp: 2025-10-29T00:13:23.293Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablecolumncontent](/documentation/swiftui/tablecolumncontent)

**Instance Method**

# customizationID(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> Sets the identifier to be associated with a column when persisting its state with .

```swift
@MainActor @preconcurrency func customizationID(_ id: String) -> some TableColumnContent<Self.TableRowValue, Self.TableColumnSortComparator>
```

## Parameters

**id**

The identifier to associate with a column.



## Discussion

This is required to allow user customization of a specific table column, in addition to the table as a whole being provided a binding to a `TableColumnCustomization`.

The identifier needs to be stable, including across app version updates, since it is used to persist the user customization.

## Configuring the content

- [alignment(_:)](/documentation/swiftui/tablecolumncontent/alignment(_:))
- [defaultVisibility(_:)](/documentation/swiftui/tablecolumncontent/defaultvisibility(_:))
- [disabledCustomizationBehavior(_:)](/documentation/swiftui/tablecolumncontent/disabledcustomizationbehavior(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
