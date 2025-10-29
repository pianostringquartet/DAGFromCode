---
title: ListItemTint
description: A tint effect configuration that you can apply to content in a list.
source: https://developer.apple.com/documentation/swiftui/listitemtint
timestamp: 2025-10-29T00:10:33.828Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ListItemTint

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A tint effect configuration that you can apply to content in a list.

```swift
struct ListItemTint
```

## Overview

Use one of these tint values with the [listItemTint(_:)](/documentation/swiftui/view/listitemtint(_:)) view modifier. The containing list applies the tint in a platform-specific way.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting list item tint options

- [monochrome](/documentation/swiftui/listitemtint/monochrome) A standard grayscale tint effect.
- [fixed(_:)](/documentation/swiftui/listitemtint/fixed(_:)) An explicit tint color.
- [preferred(_:)](/documentation/swiftui/listitemtint/preferred(_:)) An explicit tint color that the system can override.

## Configuring rows

- [listItemTint(_:)](/documentation/swiftui/view/listitemtint(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
