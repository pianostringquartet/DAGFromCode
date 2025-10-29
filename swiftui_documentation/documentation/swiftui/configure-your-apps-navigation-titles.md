---
title: Configure your apps navigation titles
description: Use a navigation title to display the current navigation state of an interface.
source: https://developer.apple.com/documentation/swiftui/configure-your-apps-navigation-titles
timestamp: 2025-10-29T00:12:36.079Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Article**

# Configure your apps navigation titles

> Use a navigation title to display the current navigation state of an interface.

## Overview

On iOS and watchOS, when a view is navigated to inside of a navigation stack, the navigation bar displays that view’s title. On iPadOS, the primary destination’s navigation title is reflected as the window’s title in the App Switcher. Similarly on macOS, the system uses the primary destination’s title as the window title in the titlebar, Windows menu and Mission Control.

In its simplest form, you can provide a string or a localized string key to a navigation title modifier directly.

```swift
ContentView()
    .navigationTitle("My Title")
```

The title of your apps toolbar can be further customized using additional navigation related modifiers. For example, you can associate a [URL](/documentation/Foundation/URL) or your own type conforming to [Transferable](/documentation/CoreTransferable/Transferable) to your view using the navigation document modifier.

```swift
ContentView()
    .navigationTitle("My Title")
    .navigationDocument(myURL)
```

In iOS and iPadOS, this will construct a title that can present a menu by tapping the navigation title in the app’s navigation bar. The menu contains content providing information related to the URL and a draggable icon for sharing.

In macOS, this item will construct a proxy icon for manipulating the file backing the document.

When providing a transferable type, you should typically provide a [Share Preview](/documentation/swiftui/sharepreview) which provides the appropriate content for rendering the preview in the header of the menu.

```swift
ContentView()
    .navigationTitle("My Title")
    .navigationDocument(
        myDocument, 
        preview: SharePreview(
            "My Preview Title", image: myDocument.image))
```

### Renaming

You can provide a text binding to the navigation title modifier and SwiftUI will automatically configure the toolbar to allow editing of the navigation title on iOS or macOS. SwiftUI automatically syncs the navigation title with the value of the string binding provided to the text field.

You can provide a string binding to the navigation title to configure the title’s text field. SwiftUI will automatically place a rename action in the title menu alongside the actions originating from your app’s commands.

```swift
ContentView()
    .navigationTitle($contentTitle)
```

In iOS, when using a text field in a navigation title, SwiftUI creates a button in the toolbar title. When triggered, this button updates the navigation title to display an inline text field that will update the binding you provide as the user types.

## Navigation titles

- [navigationTitle(_:)](/documentation/swiftui/view/navigationtitle(_:))
- [navigationSubtitle(_:)](/documentation/swiftui/view/navigationsubtitle(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
