---
title: exportableToServices(_:onEdit:)
description: Exports read-write items for consumption by shortcuts, quick actions, and services.
source: https://developer.apple.com/documentation/swiftui/view/exportabletoservices(_:onedit:)
timestamp: 2025-10-29T00:15:31.830Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# exportableToServices(_:onEdit:)

**Available on:** macOS 13.0+

> Exports read-write items for consumption by shortcuts, quick actions, and services.

```swift
nonisolated func exportableToServices<T>(_ payload: @autoclosure @escaping () -> [T], onEdit: @escaping ([T]) -> Bool) -> some View where T : Transferable
```

## Parameters

**payload**

A closure that will be called on request of the items by the shortcut or service.



**onEdit**

A closure that will be called after the shortcut or service completes with its output data. This should replace the selected subpart that was exported with `onExport`. Return `false` to indicate that there was a failure to receive the items.



## Discussion

If the associated view supports selection, the exported item should reflect that selected subpart.

```swift
@State private var title: String
var body: some View {
    Color.pink
        .frame(width: 400, height: 400)
        .exportableToServices([title]) { editedTitles
            title = editedTitles.first ?? title
            return !editedTitles.isEmpty
        }
}
```

## Importing and exporting transferable items

- [importableFromServices(for:action:)](/documentation/swiftui/view/importablefromservices(for:action:))
- [exportableToServices(_:)](/documentation/swiftui/view/exportabletoservices(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
