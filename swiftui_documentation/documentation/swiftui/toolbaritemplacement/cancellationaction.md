---
title: cancellationAction
description: The item represents a cancellation action for a modal interface.
source: https://developer.apple.com/documentation/swiftui/toolbaritemplacement/cancellationaction
timestamp: 2025-10-29T00:12:29.904Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toolbaritemplacement](/documentation/swiftui/toolbaritemplacement)

**Type Property**

# cancellationAction

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> The item represents a cancellation action for a modal interface.

```swift
static let cancellationAction: ToolbarItemPlacement
```

## Discussion

Cancellation actions dismiss the modal interface without taking any action, usually by tapping or clicking a Cancel button.

In macOS and in Mac Catalyst apps, the system places `cancellationAction` items on the trailing edge of the sheet but places them before any [confirmation Action](/documentation/swiftui/toolbaritemplacement/confirmationaction) items.

In iOS, iPadOS, tvOS, and watchOS, the system places `cancellationAction` items on the leading edge of the navigation bar.

## Getting placement for specific actions

- [primaryAction](/documentation/swiftui/toolbaritemplacement/primaryaction)
- [secondaryAction](/documentation/swiftui/toolbaritemplacement/secondaryaction)
- [confirmationAction](/documentation/swiftui/toolbaritemplacement/confirmationaction)
- [destructiveAction](/documentation/swiftui/toolbaritemplacement/destructiveaction)
- [navigation](/documentation/swiftui/toolbaritemplacement/navigation)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
