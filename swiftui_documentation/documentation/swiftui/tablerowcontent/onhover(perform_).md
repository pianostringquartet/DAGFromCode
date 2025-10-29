---
title: onHover(perform:)
description: Adds an action to perform when the pointer moves onto or away from the entire row.
source: https://developer.apple.com/documentation/swiftui/tablerowcontent/onhover(perform:)
timestamp: 2025-10-29T00:14:08.788Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablerowcontent](/documentation/swiftui/tablerowcontent)

**Instance Method**

# onHover(perform:)

**Available on:** macOS 14.0+

> Adds an action to perform when the pointer moves onto or away from the entire row.

```swift
@MainActor @preconcurrency func onHover(perform action: @escaping (Bool) -> Void) -> some TableRowContent<Self.TableRowValue>
```

## Managing interaction

- [draggable(_:)](/documentation/swiftui/tablerowcontent/draggable(_:))
- [dropDestination(for:action:)](/documentation/swiftui/tablerowcontent/dropdestination(for:action:))
- [itemProvider(_:)](/documentation/swiftui/tablerowcontent/itemprovider(_:))
- [ItemProviderTableRowModifier](/documentation/swiftui/itemprovidertablerowmodifier)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
