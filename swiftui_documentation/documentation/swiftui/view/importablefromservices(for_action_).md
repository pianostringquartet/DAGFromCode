---
title: importableFromServices(for:action:)
description: Enables importing items from services, such as Continuity Camera on macOS.
source: https://developer.apple.com/documentation/swiftui/view/importablefromservices(for:action:)
timestamp: 2025-10-29T00:15:32.071Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# importableFromServices(for:action:)

**Available on:** macOS 13.0+

> Enables importing items from services, such as Continuity Camera on macOS.

```swift
nonisolated func importableFromServices<T>(for payloadType: T.Type = T.self, action: @escaping ([T]) -> Bool) -> some View where T : Transferable
```

## Parameters

**payloadType**

The expected type of the imported models.



**action**

A closure that will be called with the imported service item. Return `false` to indicate that there was a failure to receive the items.



## Discussion

```swift
@State private var title: String
var body: some View {
    Color.pink
        .frame(width: 400, height: 400)
        .importableFromServices(for: String.self) { titles
            title = titles.first ?? title
            return !titles.isEmpty
        }
}
```

## Importing and exporting transferable items

- [exportableToServices(_:)](/documentation/swiftui/view/exportabletoservices(_:))
- [exportableToServices(_:onEdit:)](/documentation/swiftui/view/exportabletoservices(_:onedit:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
