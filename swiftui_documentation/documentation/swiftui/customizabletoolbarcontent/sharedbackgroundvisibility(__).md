---
title: sharedBackgroundVisibility(_:)
description: Controls the visibility of the glass background effect on items in the toolbar. In certain contexts, such as the navigation bar on iOS and the window toolbar on macOS, toolbar items will be given a glass background effect that is shared with other items in the same logical grouping.
source: https://developer.apple.com/documentation/swiftui/customizabletoolbarcontent/sharedbackgroundvisibility(_:)
timestamp: 2025-10-29T00:13:27.182Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [customizabletoolbarcontent](/documentation/swiftui/customizabletoolbarcontent)

**Instance Method**

# sharedBackgroundVisibility(_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+

> Controls the visibility of the glass background effect on items in the toolbar. In certain contexts, such as the navigation bar on iOS and the window toolbar on macOS, toolbar items will be given a glass background effect that is shared with other items in the same logical grouping.

```swift
nonisolated func sharedBackgroundVisibility(_ visibility: Visibility) -> some CustomizableToolbarContent
```

## Parameters

**visibility**

The visibility of the background effect.



## Discussion

This modifier adjusts the visibility of that effect. Hiding the effect will cause the item to be placed in its own grouping.

```swift
ContentView()
    .toolbar(id: "main") {
        ToolbarItem(id: "build-status", placement: principal) {
            BuildStatus()
        }
        .sharedBackgroundVisibility(.hidden)
    }
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
