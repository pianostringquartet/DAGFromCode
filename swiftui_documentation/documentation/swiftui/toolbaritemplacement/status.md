---
title: status
description: The item represents a change in status for the current context.
source: https://developer.apple.com/documentation/swiftui/toolbaritemplacement/status
timestamp: 2025-10-29T00:14:42.811Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toolbaritemplacement](/documentation/swiftui/toolbaritemplacement)

**Type Property**

# status

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 18.0+, visionOS 1.0+

> The item represents a change in status for the current context.

```swift
static let status: ToolbarItemPlacement
```

## Discussion

Status items are informational in nature, and don’t represent an action that can be taken by the user. For example, a message that indicates the time of the last communication with the server to check for new messages.

In macOS and in Mac Catalyst apps, the system places status items in the center of the toolbar.

In iOS and iPadOS, the system places status items in the center of the bottom toolbar.

In tvOS, this placement is only available from within the sidebar of a [Navigation Split View](/documentation/swiftui/navigationsplitview).  The system places status items in the center of the bottom toolbar within the navigation sidebar.  It has no effect if used elsewhere.

## Getting semantic placement

- [automatic](/documentation/swiftui/toolbaritemplacement/automatic)
- [principal](/documentation/swiftui/toolbaritemplacement/principal)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
