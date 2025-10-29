---
title: selectionDisabled(_:)
description: Adds a condition that controls whether users can select this row.
source: https://developer.apple.com/documentation/swiftui/tablerowcontent/selectiondisabled(_:)
timestamp: 2025-10-29T00:15:23.957Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablerowcontent](/documentation/swiftui/tablerowcontent)

**Instance Method**

# selectionDisabled(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> Adds a condition that controls whether users can select this row.

```swift
@MainActor @preconcurrency func selectionDisabled(_ isDisabled: Bool = true) -> some TableRowContent<Self.TableRowValue>
```

## Parameters

**isDisabled**

A Boolean value that determines whether users can select this row.



## Discussion

Use this modifier to control the selectability of views in selectable containers like [List](/documentation/swiftui/list) or [Table](/documentation/swiftui/table). In the example, below, the user can’t select the first item in the table.

```swift
@Binding var rows: [Item]
@Binding var selection: Set<Item.ID>

var body: some View {
    Table(of: Item.self, selection: $selection) {
        TableColumn("ID", value: \.id.uuidString)
    } rows: {
        ForEach(rows) { row in
            TableRow(row)
                .selectionDisabled(
                    row.id == rows.first?.id
                )
        }
    }
}
```

You can also use this modifier to specify the selectability of views within a `Picker`. The following example represents a flavor picker that disables selection on flavors that are unavailable.

```swift
Picker("Flavor", selection: $selectedFlavor) {
    ForEach(Flavor.allCases) { flavor in
        Text(flavor.rawValue.capitalized)
            .selectionDisabled(isSoldOut(flavor))
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
