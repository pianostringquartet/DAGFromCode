---
title: destructiveAction
description: The item represents a destructive action for a modal interface.
source: https://developer.apple.com/documentation/swiftui/toolbaritemplacement/destructiveaction
timestamp: 2025-10-29T00:13:35.278Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toolbaritemplacement](/documentation/swiftui/toolbaritemplacement)

**Type Property**

# destructiveAction

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> The item represents a destructive action for a modal interface.

```swift
static let destructiveAction: ToolbarItemPlacement
```

## Discussion

Destructive actions represent the opposite of a confirmation action. For example, a button labeled “Don’t Save” that allows the user to discard unsaved changes to a document before quitting.

In macOS and in Mac Catalyst apps, the system places `destructiveAction` items in the leading edge of the sheet and gives them a special appearance to caution against accidental use.

In iOS, tvOS, and watchOS, the system places `destructiveAction` items in the trailing edge of the navigation bar.

## Getting placement for specific actions

- [primaryAction](/documentation/swiftui/toolbaritemplacement/primaryaction)
- [secondaryAction](/documentation/swiftui/toolbaritemplacement/secondaryaction)
- [confirmationAction](/documentation/swiftui/toolbaritemplacement/confirmationaction)
- [cancellationAction](/documentation/swiftui/toolbaritemplacement/cancellationaction)
- [navigation](/documentation/swiftui/toolbaritemplacement/navigation)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
