---
title: preferred(_:)
description: An explicit tint color that the system can override.
source: https://developer.apple.com/documentation/swiftui/listitemtint/preferred(_:)
timestamp: 2025-10-29T00:11:36.895Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [listitemtint](/documentation/swiftui/listitemtint)

**Type Method**

# preferred(_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> An explicit tint color that the system can override.

```swift
static func preferred(_ tint: Color) -> ListItemTint
```

## Parameters

**tint**

The color to use to tint the content.



## Discussion

The system can override this tint effect, like when the system has a custom user accent color on macOS.

## Getting list item tint options

- [monochrome](/documentation/swiftui/listitemtint/monochrome)
- [fixed(_:)](/documentation/swiftui/listitemtint/fixed(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
