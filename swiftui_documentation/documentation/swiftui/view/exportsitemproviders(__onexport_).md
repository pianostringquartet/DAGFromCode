---
title: exportsItemProviders(_:onExport:)
description: Exports a read-only item provider for consumption by shortcuts, quick actions, and services.
source: https://developer.apple.com/documentation/swiftui/view/exportsitemproviders(_:onexport:)
timestamp: 2025-10-29T00:15:31.988Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# exportsItemProviders(_:onExport:)

**Available on:** macOS 12.0+

> Exports a read-only item provider for consumption by shortcuts, quick actions, and services.

```swift
nonisolated func exportsItemProviders(_ contentTypes: [UTType], onExport: @escaping () -> [NSItemProvider]) -> some View
```

## Parameters

**contentTypes**

The types of content that the view supports exporting. An empty array means the view does not currently support exporting.



**onExport**

A closure that will be called on request of the items by the shortcut or service.



## Discussion

If the associated view supports selection, the exported item should reflect that selected subpart.

## Importing and exporting using item providers

- [importsItemProviders(_:onImport:)](/documentation/swiftui/view/importsitemproviders(_:onimport:))
- [exportsItemProviders(_:onExport:onEdit:)](/documentation/swiftui/view/exportsitemproviders(_:onexport:onedit:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
