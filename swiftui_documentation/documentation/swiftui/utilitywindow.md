---
title: UtilityWindow
description: A specialized window scene that provides secondary utility to the content of the main scenes of an application.
source: https://developer.apple.com/documentation/swiftui/utilitywindow
timestamp: 2025-10-29T00:10:07.014Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# UtilityWindow

**Available on:** macOS 15.0+

> A specialized window scene that provides secondary utility to the content of the main scenes of an application.

```swift
struct UtilityWindow<Content> where Content : View
```

## Overview

Utility windows are typically used to display controls, settings, or information associated the main content of an application, sometimes referred to as tool palettes or inspector windows. Because of this role, they have specialized behavior compared to all other windows:

- They receive `FocusedValues` from the focused main scene in an application, similar to commands in the main menu, which can be used to display information on the active content as the user focuses on different scenes.
- They have a default window level of `.floating` so they remain visible when moving focus between the main scenes.
- They hide when the window is no longer active.
- They only become focused when explicitly needed, such as clicking in the titlebar or on a focusable view.
- When focused, they can be dismissed with the Escape key.
- They are not minimizable by default.

@main struct PhotoBrowser: App { var body: some Scene { WindowGroup { PhotoGallery() }

```swift
      UtilityWindow("Photo Info", id: "photo-info") {
          PhotoInfoViewer()
      }
  }
```

}

struct PhotoInfoViewer: View { // Automatically updates to the photo selection from whichever // photo gallery window is focused. @FocusedValue(PhotoSelection.self) private var selectedPhotos

```swift
  var body: some View {
      Text("\(selectedPhotos.count) photos selected")
  }
```

}

`UtilityWindow` will automatically add a menu item to show/hide itself in the “View” menu. This can be removed by applying [commandsRemoved()](/documentation/swiftui/scene/commandsremoved()) to the utility window, and manually placing a [Window Visibility Toggle](/documentation/swiftui/windowvisibilitytoggle) elsewhere in an app’s commands. Utility windows can also be programmatically presented with [open Window](/documentation/swiftui/environmentvalues/openwindow) and dismissed using [dismiss](/documentation/swiftui/environmentvalues/dismiss).

## Conforms To

- [Scene](/documentation/swiftui/scene)

## Initializers

- [init(_:id:content:)](/documentation/swiftui/utilitywindow/init(_:id:content:)) Creates a utility window with a title and identifier.

## Creating windows

- [WindowGroup](/documentation/swiftui/windowgroup)
- [Window](/documentation/swiftui/window)
- [WindowStyle](/documentation/swiftui/windowstyle)
- [windowStyle(_:)](/documentation/swiftui/scene/windowstyle(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
