---
title: primaryAction
description: The item represents a primary action.
source: https://developer.apple.com/documentation/swiftui/toolbaritemplacement/primaryaction
timestamp: 2025-10-29T00:11:19.151Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toolbaritemplacement](/documentation/swiftui/toolbaritemplacement)

**Type Property**

# primaryAction

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> The item represents a primary action.

```swift
static let primaryAction: ToolbarItemPlacement
```

## Discussion

A primary action is a more frequently used action for the current context. For example, a button the user clicks or taps to compose a new message in a chat app.

In macOS and in Mac Catalyst apps, the location for the primary action is the leading edge of the toolbar.

In iOS, iPadOS, and tvOS, the location for the primary action is the trailing edge of the navigation bar.

In watchOS the system places the primary action beneath the navigation bar; the user reveals the action by scrolling.

## Getting placement for specific actions

- [secondaryAction](/documentation/swiftui/toolbaritemplacement/secondaryaction)
- [confirmationAction](/documentation/swiftui/toolbaritemplacement/confirmationaction)
- [cancellationAction](/documentation/swiftui/toolbaritemplacement/cancellationaction)
- [destructiveAction](/documentation/swiftui/toolbaritemplacement/destructiveaction)
- [navigation](/documentation/swiftui/toolbaritemplacement/navigation)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
