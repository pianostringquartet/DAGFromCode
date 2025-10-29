---
title: defaultVisibility(_:)
description: Sets the default visibility of a table column.
source: https://developer.apple.com/documentation/swiftui/tablecolumncontent/defaultvisibility(_:)
timestamp: 2025-10-29T00:10:46.144Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablecolumncontent](/documentation/swiftui/tablecolumncontent)

**Instance Method**

# defaultVisibility(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> Sets the default visibility of a table column.

```swift
@MainActor @preconcurrency func defaultVisibility(_ visibility: Visibility) -> some TableColumnContent<Self.TableRowValue, Self.TableColumnSortComparator>
```

## Parameters

**visibility**

The default visibility to apply to columns.



## Discussion

A `hidden` column will not be visible, unless the `Table` is also bound to `TableColumnCustomization` and either modified programmatically or by the user.

## Configuring the content

- [alignment(_:)](/documentation/swiftui/tablecolumncontent/alignment(_:))
- [customizationID(_:)](/documentation/swiftui/tablecolumncontent/customizationid(_:))
- [disabledCustomizationBehavior(_:)](/documentation/swiftui/tablecolumncontent/disabledcustomizationbehavior(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
