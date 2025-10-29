---
title: importsItemProviders(_:onImport:)
description: Enables importing item providers from services, such as Continuity Camera on macOS.
source: https://developer.apple.com/documentation/swiftui/view/importsitemproviders(_:onimport:)
timestamp: 2025-10-29T00:15:31.863Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# importsItemProviders(_:onImport:)

**Available on:** macOS 12.0+

> Enables importing item providers from services, such as Continuity Camera on macOS.

```swift
nonisolated func importsItemProviders(_ contentTypes: [UTType], onImport: @escaping ([NSItemProvider]) -> Bool) -> some View
```

## Parameters

**contentTypes**

The types of content that the view supports importing. An empty array means the view does not currently support importing.



**onImport**

A closure that will be called with the imported service item. Return `false` to indicate that there was a failure to receive the items.



## Importing and exporting using item providers

- [exportsItemProviders(_:onExport:)](/documentation/swiftui/view/exportsitemproviders(_:onexport:))
- [exportsItemProviders(_:onExport:onEdit:)](/documentation/swiftui/view/exportsitemproviders(_:onexport:onedit:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
