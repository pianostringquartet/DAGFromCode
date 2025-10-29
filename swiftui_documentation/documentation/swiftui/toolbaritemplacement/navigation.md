---
title: navigation
description: The item represents a navigation action.
source: https://developer.apple.com/documentation/swiftui/toolbaritemplacement/navigation
timestamp: 2025-10-29T00:14:22.969Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toolbaritemplacement](/documentation/swiftui/toolbaritemplacement)

**Type Property**

# navigation

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+

> The item represents a navigation action.

```swift
static let navigation: ToolbarItemPlacement
```

## Discussion

Navigation actions allow the user to move between contexts. For example, the forward and back buttons of a web browser are navigation actions.

In macOS and in Mac Catalyst apps, the system places navigation items in the leading edge of the toolbar ahead of the inline title if that is present in the toolbar.

In iOS, iPadOS, and tvOS, navigation items appear in the leading edge of the navigation bar. If a system navigation item such as a back button is present in a compact width, it instead appears in the [primary Action](/documentation/swiftui/toolbaritemplacement/primaryaction) placement.

## Getting placement for specific actions

- [primaryAction](/documentation/swiftui/toolbaritemplacement/primaryaction)
- [secondaryAction](/documentation/swiftui/toolbaritemplacement/secondaryaction)
- [confirmationAction](/documentation/swiftui/toolbaritemplacement/confirmationaction)
- [cancellationAction](/documentation/swiftui/toolbaritemplacement/cancellationaction)
- [destructiveAction](/documentation/swiftui/toolbaritemplacement/destructiveaction)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
