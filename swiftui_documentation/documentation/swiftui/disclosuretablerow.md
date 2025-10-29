---
title: DisclosureTableRow
description: A kind of table row that shows or hides additional rows based on the state of a disclosure control.
source: https://developer.apple.com/documentation/swiftui/disclosuretablerow
timestamp: 2025-10-29T00:11:40.973Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# DisclosureTableRow

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> A kind of table row that shows or hides additional rows based on the state of a disclosure control.

```swift
struct DisclosureTableRow<Label, Content> where Label : TableRowContent, Content : TableRowContent, Label.TableRowValue == Content.TableRowValue
```

## Overview

A disclosure group row consists of a label row that is always visible, and some content rows that are conditionally visible depending on the state. Toggling the control will flip the state between “expanded” and “collapsed”.

In the following example, a disclosure group has `allDevices` as the label row, and exposes its expanded state with the bound property, `expanded`. Upon toggling the disclosure control, the user can update the expanded state which will in turn show or hide the three content rows for `iPhone`, `iPad`, and `Mac`.

```swift
private struct DeviceStats: Identifiable {
    // ...
}
@State private var expanded: Bool = true
@State private var allDevices: DeviceStats = /* ... */
@State private var iPhone: DeviceStats = /* ... */
@State private var iPad: DeviceStats = /* ... */
@State private var Mac: DeviceStats = /* ... */

var body: some View {
    Table(of: DeviceStats.self) {
        // ...
    } rows: {
        DisclosureTableRow(allDevices, isExpanded: $expanded) {
            TableRow(iPhone)
            TableRow(iPad)
            TableRow(Mac)
        }
    }
}
```

## Conforms To

- [TableRowContent](/documentation/swiftui/tablerowcontent)

## Creating a disclosure table row

- [init(_:isExpanded:content:)](/documentation/swiftui/disclosuretablerow/init(_:isexpanded:content:)) Creates a disclosure group with the given value and table rows, and a binding to the expansion state (expanded or collapsed).

## Adding progressive disclosure

- [TableOutlineGroupContent](/documentation/swiftui/tableoutlinegroupcontent)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
