---
title: disabledCustomizationBehavior(_:)
description: Sets the disabled customization behavior for a table column.
source: https://developer.apple.com/documentation/swiftui/tablecolumncontent/disabledcustomizationbehavior(_:)
timestamp: 2025-10-29T00:09:42.639Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablecolumncontent](/documentation/swiftui/tablecolumncontent)

**Instance Method**

# disabledCustomizationBehavior(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> Sets the disabled customization behavior for a table column.

```swift
@MainActor @preconcurrency func disabledCustomizationBehavior(_ behavior: TableColumnCustomizationBehavior) -> some TableColumnContent<Self.TableRowValue, Self.TableColumnSortComparator>
```

## Parameters

**behavior**

The behavior to disable, or `.all` to not allow any customization.



## Discussion

When the containing `Table` is bound to some `TableColumnCustomization`, all columns will be able to be customized by the user on macOS by default (i.e. `TableColumnCustomizationBehavior.all`). This modifier allows disabling specific behavior.

This modifier has no effect on iOS since `Table` does not support any built-in user customization features.

This does not prevent programmatic changes to a table column customization.

## Configuring the content

- [alignment(_:)](/documentation/swiftui/tablecolumncontent/alignment(_:))
- [customizationID(_:)](/documentation/swiftui/tablecolumncontent/customizationid(_:))
- [defaultVisibility(_:)](/documentation/swiftui/tablecolumncontent/defaultvisibility(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
