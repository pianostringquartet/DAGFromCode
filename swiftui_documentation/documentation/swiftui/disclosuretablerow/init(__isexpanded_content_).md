---
title: init(_:isExpanded:content:)
description: Creates a disclosure group with the given value and table rows, and a binding to the expansion state (expanded or collapsed).
source: https://developer.apple.com/documentation/swiftui/disclosuretablerow/init(_:isexpanded:content:)
timestamp: 2025-10-29T00:11:13.427Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [disclosuretablerow](/documentation/swiftui/disclosuretablerow)

**Initializer**

# init(_:isExpanded:content:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> Creates a disclosure group with the given value and table rows, and a binding to the expansion state (expanded or collapsed).

```swift
init<Value>(_ value: Value, isExpanded: Binding<Bool>? = nil, @TableRowBuilder<Value> content: @escaping () -> Content) where Label == TableRow<Value>, Value == Content.TableRowValue
```

## Parameters

**value**

The value of the disclosable table row.



**isExpanded**

A binding to a Boolean value that determines the group’s expansion state (expanded or collapsed).



**content**

The table row shown when the disclosure group expands.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
