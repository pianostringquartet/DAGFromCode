---
title: listItemTint(_:)
description: Sets a fixed tint color for content in a list.
source: https://developer.apple.com/documentation/swiftui/view/listitemtint(_:)
timestamp: 2025-10-29T00:10:17.651Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# listItemTint(_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Sets a fixed tint color for content in a list.

```swift
nonisolated func listItemTint(_ tint: Color?) -> some View
```

## Parameters

**tint**

The color to use to tint the content. Use `nil` to avoid overriding the inherited tint.



## Discussion

The containing list’s style applies the tint as appropriate. For example, watchOS uses the tint color for its background platter appearance. Sidebars on iOS and macOS apply the tint color to their [Label](/documentation/swiftui/label) icons, which otherwise use the accent color by default.

> [!NOTE]
> This modifier is equivalent to using the version of the modifier that takes a [List Item Tint](/documentation/swiftui/listitemtint) value and specifying the `tint` color in the corresponding [fixed(_:)](/documentation/swiftui/listitemtint/fixed(_:)) input.

## Configuring rows

- [ListItemTint](/documentation/swiftui/listitemtint)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
