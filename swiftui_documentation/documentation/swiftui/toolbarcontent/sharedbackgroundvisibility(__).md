---
title: sharedBackgroundVisibility(_:)
description: Controls the visibility of the glass background effect on items in the toolbar. In certain contexts, such as the navigation bar on iOS and the window toolbar on macOS, toolbar items will be given a glass background effect that is shared with other items in the same logical grouping.
source: https://developer.apple.com/documentation/swiftui/toolbarcontent/sharedbackgroundvisibility(_:)
timestamp: 2025-10-29T00:09:54.458Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toolbarcontent](/documentation/swiftui/toolbarcontent)

**Instance Method**

# sharedBackgroundVisibility(_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+

> Controls the visibility of the glass background effect on items in the toolbar. In certain contexts, such as the navigation bar on iOS and the window toolbar on macOS, toolbar items will be given a glass background effect that is shared with other items in the same logical grouping.

```swift
nonisolated func sharedBackgroundVisibility(_ visibility: Visibility) -> some ToolbarContent
```

## Parameters

**visibility**

The visibility of the background effect.



## Discussion

This modifier adjusts the visibility of that effect. Hiding the effect will cause the item to be placed in its own grouping.

```swift
ContentView()
    .toolbar {
        ToolbarItem(placement: principal) {
            BuildStatus()
        }
        .sharedBackgroundVisibility(.hidden)
    }
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
