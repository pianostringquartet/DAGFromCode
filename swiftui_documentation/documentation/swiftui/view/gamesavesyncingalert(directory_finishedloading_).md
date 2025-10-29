---
title: gameSaveSyncingAlert(directory:finishedLoading:)
description: Presents a modal view while the game synced directory loads.
source: https://developer.apple.com/documentation/swiftui/view/gamesavesyncingalert(directory:finishedloading:)
timestamp: 2025-10-29T00:12:35.932Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# gameSaveSyncingAlert(directory:finishedLoading:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, visionOS 26.0+

> Presents a modal view while the game synced directory loads.

```swift
@MainActor @preconcurrency func gameSaveSyncingAlert(directory: Binding<GameSaveSyncedDirectory?>, finishedLoading: @escaping @MainActor () -> Void) -> some View
```

## Parameters

**directory**

A binding to an optional game synced directory that was returned by calling `GameSaveSyncedDirectory/openDirectory(containerIdentifier:)`. If this value is `nil`, the view doesn’t display.



**finishedLoading**

The closure to execute after the loading process completes.



## Discussion

Use this method when you want to present a modal loading view to the user when a Boolean value you provide is true.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
