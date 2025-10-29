---
title: MenuOrder
description: The order in which a menu presents its content.
source: https://developer.apple.com/documentation/swiftui/menuorder
timestamp: 2025-10-29T00:14:34.005Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# MenuOrder

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> The order in which a menu presents its content.

```swift
struct MenuOrder
```

## Overview

You can configure the preferred menu order using the [menuOrder(_:)](/documentation/swiftui/view/menuorder(_:)) view modifier.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting menu orders

- [automatic](/documentation/swiftui/menuorder/automatic) The ordering of the menu chosen by the system for the current context.
- [fixed](/documentation/swiftui/menuorder/fixed) Order items from top to bottom.
- [priority](/documentation/swiftui/menuorder/priority) Keep the first items closest to user’s interaction point.

## Setting a preferred order

- [menuOrder(_:)](/documentation/swiftui/view/menuorder(_:))
- [menuOrder](/documentation/swiftui/environmentvalues/menuorder)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
