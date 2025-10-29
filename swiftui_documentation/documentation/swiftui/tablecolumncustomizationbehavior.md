---
title: TableColumnCustomizationBehavior
description: A set of customization behaviors of a column that a table can offer to a user.
source: https://developer.apple.com/documentation/swiftui/tablecolumncustomizationbehavior
timestamp: 2025-10-29T00:14:25.243Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# TableColumnCustomizationBehavior

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> A set of customization behaviors of a column that a table can offer to a user.

```swift
struct TableColumnCustomizationBehavior
```

## Overview

This is used as a value provided to [disabledCustomizationBehavior(_:)](/documentation/swiftui/tablecolumncontent/disabledcustomizationbehavior(_:)).

Setting any of these values as the `disabledCustomizationBehavior(_:)` doesn’t have any effect on iOS.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [ExpressibleByArrayLiteral](/documentation/Swift/ExpressibleByArrayLiteral)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [SetAlgebra](/documentation/Swift/SetAlgebra)

## Getting the customization behavior

- [all](/documentation/swiftui/tablecolumncustomizationbehavior/all) All customization behaviors.
- [reorder](/documentation/swiftui/tablecolumncustomizationbehavior/reorder) A behavior that allows the column to be reordered by the user.
- [resize](/documentation/swiftui/tablecolumncustomizationbehavior/resize) A behavior that allows the column to be resized by the user.
- [visibility](/documentation/swiftui/tablecolumncustomizationbehavior/visibility) A behavior that allows the column to be hidden or revealed by the user.

## Creating a behavior

- [init()](/documentation/swiftui/tablecolumncustomizationbehavior/init()) Creates an empty customization behavior, representing no customization

## Customizing columns

- [tableColumnHeaders(_:)](/documentation/swiftui/view/tablecolumnheaders(_:))
- [TableColumnCustomization](/documentation/swiftui/tablecolumncustomization)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
