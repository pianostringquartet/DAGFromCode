---
title: toolbarTitleMenu(content:)
description: Configure the title menu of a toolbar.
source: https://developer.apple.com/documentation/swiftui/view/toolbartitlemenu(content:)
timestamp: 2025-10-29T00:13:04.029Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# toolbarTitleMenu(content:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Configure the title menu of a toolbar.

```swift
nonisolated func toolbarTitleMenu<C>(@ViewBuilder content: () -> C) -> some View where C : View
```

## Parameters

**content**

The content associated to the toolbar title menu.



## Discussion

A title menu represent common functionality that can be done on the content represented by your app’s toolbar or navigation title. This menu may be populated from your app’s commands like [save Item](/documentation/swiftui/commandgroupplacement/saveitem) or [print Item](/documentation/swiftui/commandgroupplacement/printitem).

```swift
ContentView()
    .toolbar {
        ToolbarTitleMenu()
    }
```

You can provide your own set of actions to override this behavior.

```swift
ContentView()
    .toolbarTitleMenu {
        DuplicateButton()
        PrintButton()
    }
```

In iOS and iPadOS, this will construct a menu that can be presented by tapping the navigation title in the app’s navigation bar.

## Setting the toolbar title menu

- [ToolbarTitleMenu](/documentation/swiftui/toolbartitlemenu)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
