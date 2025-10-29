---
title: principal
description: The system places the item in the principal item section.
source: https://developer.apple.com/documentation/swiftui/toolbaritemplacement/principal
timestamp: 2025-10-29T00:11:57.084Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toolbaritemplacement](/documentation/swiftui/toolbaritemplacement)

**Type Property**

# principal

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+

> The system places the item in the principal item section.

```swift
static let principal: ToolbarItemPlacement
```

## Discussion

Principal actions are key units of functionality that receive prominent placement. For example, the location field for a web browser is a principal item.

In macOS and in Mac Catalyst apps, the system places the principal item in the center of the toolbar.

In iOS, iPadOS, and tvOS, the system places the principal item in the center of the navigation bar. This item takes precedent over a title specified through `View/navigationTitle`.

## Getting semantic placement

- [automatic](/documentation/swiftui/toolbaritemplacement/automatic)
- [status](/documentation/swiftui/toolbaritemplacement/status)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
