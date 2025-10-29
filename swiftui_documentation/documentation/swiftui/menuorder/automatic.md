---
title: automatic
description: The ordering of the menu chosen by the system for the current context.
source: https://developer.apple.com/documentation/swiftui/menuorder/automatic
timestamp: 2025-10-29T00:13:14.381Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [menuorder](/documentation/swiftui/menuorder)

**Type Property**

# automatic

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> The ordering of the menu chosen by the system for the current context.

```swift
static let automatic: MenuOrder
```

## Discussion

On iOS, this order resolves to [fixed](/documentation/swiftui/menuorder/fixed) for menus presented within scrollable content. Pickers that use the [menu](/documentation/swiftui/pickerstyle/menu) style also default to [fixed](/documentation/swiftui/menuorder/fixed) order. In all other cases, menus default to [priority](/documentation/swiftui/menuorder/priority) order.

On macOS, tvOS and watchOS, the `automatic` order always resolves to [fixed](/documentation/swiftui/menuorder/fixed) order.

## Getting menu orders

- [fixed](/documentation/swiftui/menuorder/fixed)
- [priority](/documentation/swiftui/menuorder/priority)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
