---
title: itemProvider(_:)
description: Provides a closure that vends the drag representation for a particular data element.
source: https://developer.apple.com/documentation/swiftui/tablerowcontent/itemprovider(_:)
timestamp: 2025-10-29T00:10:58.698Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablerowcontent](/documentation/swiftui/tablerowcontent)

**Instance Method**

# itemProvider(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 12.0+, visionOS 1.0+

> Provides a closure that vends the drag representation for a particular data element.

```swift
@MainActor @preconcurrency func itemProvider(_ action: (() -> NSItemProvider?)?) -> ModifiedContent<Self, ItemProviderTableRowModifier>
```

## Managing interaction

- [draggable(_:)](/documentation/swiftui/tablerowcontent/draggable(_:))
- [dropDestination(for:action:)](/documentation/swiftui/tablerowcontent/dropdestination(for:action:))
- [onHover(perform:)](/documentation/swiftui/tablerowcontent/onhover(perform:))
- [ItemProviderTableRowModifier](/documentation/swiftui/itemprovidertablerowmodifier)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
