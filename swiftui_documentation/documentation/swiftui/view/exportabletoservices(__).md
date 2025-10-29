---
title: exportableToServices(_:)
description: Exports items for consumption by shortcuts, quick actions, and services.
source: https://developer.apple.com/documentation/swiftui/view/exportabletoservices(_:)
timestamp: 2025-10-29T00:15:31.912Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# exportableToServices(_:)

**Available on:** macOS 13.0+

> Exports items for consumption by shortcuts, quick actions, and services.

```swift
nonisolated func exportableToServices<T>(_ payload: @autoclosure @escaping () -> [T]) -> some View where T : Transferable
```

## Parameters

**payload**

A closure that will be called on request of the items by the shortcut or service.



## Discussion

If the associated view supports selection, the exported item should reflect that selected subpart.

```swift
var title: String
var body: some View {
    Color.pink
        .frame(width: 400, height: 400)
        .exportableToServices([title])
}
```

## Importing and exporting transferable items

- [importableFromServices(for:action:)](/documentation/swiftui/view/importablefromservices(for:action:))
- [exportableToServices(_:onEdit:)](/documentation/swiftui/view/exportabletoservices(_:onedit:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
