---
title: exportsItemProviders(_:onExport:onEdit:)
description: Exports a read-write item provider for consumption by shortcuts, quick actions, and services.
source: https://developer.apple.com/documentation/swiftui/view/exportsitemproviders(_:onexport:onedit:)
timestamp: 2025-10-29T00:15:31.818Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# exportsItemProviders(_:onExport:onEdit:)

**Available on:** macOS 12.0+

> Exports a read-write item provider for consumption by shortcuts, quick actions, and services.

```swift
nonisolated func exportsItemProviders(_ contentTypes: [UTType], onExport: @escaping () -> [NSItemProvider], onEdit: @escaping ([NSItemProvider]) -> Bool) -> some View
```

## Parameters

**contentTypes**

The types of content that the view supports exporting and importing. An empty array means the view does not currently support exporting.



**onExport**

A closure that will be called on request of the items by the shortcut or service.



**onEdit**

A closure that will be called after the shortcut or service completes with its output data. This should replace the selected subpart that was exported with `onExport`. Return `false` to indicate that there was a failure to receive the items.



## Discussion

If the associated view supports selection, the exported item should reflect that selected subpart.

## Importing and exporting using item providers

- [importsItemProviders(_:onImport:)](/documentation/swiftui/view/importsitemproviders(_:onimport:))
- [exportsItemProviders(_:onExport:)](/documentation/swiftui/view/exportsitemproviders(_:onexport:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
