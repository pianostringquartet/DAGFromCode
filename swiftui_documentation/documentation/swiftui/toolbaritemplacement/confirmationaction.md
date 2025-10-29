---
title: confirmationAction
description: The item represents a confirmation action for a modal interface.
source: https://developer.apple.com/documentation/swiftui/toolbaritemplacement/confirmationaction
timestamp: 2025-10-29T00:11:47.133Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toolbaritemplacement](/documentation/swiftui/toolbaritemplacement)

**Type Property**

# confirmationAction

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> The item represents a confirmation action for a modal interface.

```swift
static let confirmationAction: ToolbarItemPlacement
```

## Discussion

Use confirmation actions to receive user confirmation of a particular action. An example of a confirmation action would be an action with the label “Add” to add a new event to the calendar.

In macOS and in Mac Catalyst apps, the system places `confirmationAction` items on the trailing edge in the trailing-most position of the sheet and gain the apps accent color as a background color.

In iOS, iPadOS, and tvOS, the system places `confirmationAction` items in the same location as a [primary Action](/documentation/swiftui/toolbaritemplacement/primaryaction) placement.

In watchOS, the system places `confirmationAction` items in the trailing edge of the navigation bar.

## Getting placement for specific actions

- [primaryAction](/documentation/swiftui/toolbaritemplacement/primaryaction)
- [secondaryAction](/documentation/swiftui/toolbaritemplacement/secondaryaction)
- [cancellationAction](/documentation/swiftui/toolbaritemplacement/cancellationaction)
- [destructiveAction](/documentation/swiftui/toolbaritemplacement/destructiveaction)
- [navigation](/documentation/swiftui/toolbaritemplacement/navigation)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
