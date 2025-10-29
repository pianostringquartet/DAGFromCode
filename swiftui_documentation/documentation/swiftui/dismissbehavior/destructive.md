---
title: destructive
description: The destructive dismiss behavior.
source: https://developer.apple.com/documentation/swiftui/dismissbehavior/destructive
timestamp: 2025-10-29T00:11:24.299Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [dismissbehavior](/documentation/swiftui/dismissbehavior)

**Type Property**

# destructive

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> The destructive dismiss behavior.

```swift
static let destructive: DismissBehavior
```

## Discussion

Use this behavior when you want to dismiss a window regardless of any conditions that would normally prevent the dismissal. Dismissing windows in this matter may result in loss of state.

On macOS, this behavior will cause windows to dismiss even when they are currently showing a modal presentation, such as a sheet or alert. Additionally, a document window will not show the save dialog when there are unsaved changes and the window is dismissed with this behavior.

On iOS, this behavior behaves the same as `interactive`.

## Getting behaviors

- [interactive](/documentation/swiftui/dismissbehavior/interactive)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
