---
title: NSHostingMenu
description: An AppKit menu with menu items that are defined by a SwiftUI View.
source: https://developer.apple.com/documentation/swiftui/nshostingmenu
timestamp: 2025-10-29T00:10:34.192Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Class**

# NSHostingMenu

**Available on:** macOS 14.4+

> An AppKit menu with menu items that are defined by a SwiftUI View.

```swift
class NSHostingMenu<Content> where Content : View
```

## Overview

Because `NSHostingMenu` is an `NSMenu` subclass, you can integrate it into your existing AppKit view hierarchies that display menus. For example, you can set a hosting menu as an AppKit view’s context menu.

A hosting menu’s `items` property will be updated based on the content of the provided `rootView`, so direct mutations to the item array are not allowed, even if done using methods like `addItem` on the menu itself.

SwiftUI views hosted in the menu will be styled and behave identically to views in a [Menu](/documentation/swiftui/menu) or `View/contextMenu`. Make sure to use a `Group` or a view with multiple subviews as your top level container instead of an `HStack` or other container that would attempt to place all of your actions in a single menu item.

> [!NOTE]
> When used as the menu of an `NSPopUpButton`, make sure `NSPopUpButtonCell.usesItemFromMenu` is set to `false`. When using a hosting menu with macOS 14, do not change the value of the `delegate` property. (Setting the delegate is permitted on macOS 15 and newer.)

For example, the following code would set up the first part of the Finder’s context menu, both in the Action button in the toolbar and as a context menu:

```swift
struct FileOrFolderContextMenu: View {
    let url: URL
    var body: some View {
        Section {
            if url.hasDirectoryPath {
                Button("Open in New Tab") { ... }
            } else {
                Button("Open") { ... }
                Menu("Open With") { ... }
            }
        }
        Section {
            Button("Move to Trash") { ... }
        }
        Section {
            Button("Get Info") { ... }
            Button("Rename") { ... }
            if url.pathExtension != "zip" {
                Button("Compress “\(url.lastPathComponent)”") { ... }
            }
            // ...
        }
    }
}

// In the toolbar setup:
let popUpButton = NSPopUpButton(frame: .zero, pullsDown: true)
(popUpButton.cell as! NSPopUpButtonCell).usesItemFromMenu = false
popUpButton.menu = NSHostingMenu(rootView: Group {
    Button("New Folder") { ... }
    FileOrFolderContextMenu(url: selectedURL)
})

// In the column view:
List(directoryContents, selection: $selection) { entry in
    DirectoryEntryRow(entry: entry)
        .contextMenu {
            FileOrFolderContextMenu(url: entry.url)
        }
}
```

## Inherits From

- [NSMenu](/documentation/AppKit/NSMenu)

## Conforms To

- [CVarArg](/documentation/Swift/CVarArg)
- [CustomDebugStringConvertible](/documentation/Swift/CustomDebugStringConvertible)
- [CustomStringConvertible](/documentation/Swift/CustomStringConvertible)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [NSAccessibilityElementProtocol](/documentation/AppKit/NSAccessibilityElementProtocol)
- [NSAccessibilityProtocol](/documentation/AppKit/NSAccessibilityProtocol)
- [NSAppearanceCustomization](/documentation/AppKit/NSAppearanceCustomization)
- [NSCoding](/documentation/Foundation/NSCoding)
- [NSCopying](/documentation/Foundation/NSCopying)
- [NSObjectProtocol](/documentation/ObjectiveC/NSObjectProtocol)
- [NSUserInterfaceItemIdentification](/documentation/AppKit/NSUserInterfaceItemIdentification)

## Initializers

- [init(rootView:)](/documentation/swiftui/nshostingmenu/init(rootview:)) Creates a hosting menu object that wraps the specified SwiftUI view.

## Instance Properties

- [rootView](/documentation/swiftui/nshostingmenu/rootview) The root view of the SwiftUI view hierarchy managed by this menu.

## Displaying SwiftUI views in AppKit

- [Unifying your app’s animations](/documentation/swiftui/unifying-your-app-s-animations)
- [NSHostingController](/documentation/swiftui/nshostingcontroller)
- [NSHostingView](/documentation/swiftui/nshostingview)
- [NSHostingSizingOptions](/documentation/swiftui/nshostingsizingoptions)
- [NSHostingSceneRepresentation](/documentation/swiftui/nshostingscenerepresentation)
- [NSHostingSceneBridgingOptions](/documentation/swiftui/nshostingscenebridgingoptions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
