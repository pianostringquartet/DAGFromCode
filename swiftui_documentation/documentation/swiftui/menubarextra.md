---
title: MenuBarExtra
description: A scene that renders itself as a persistent control in the system menu bar.
source: https://developer.apple.com/documentation/swiftui/menubarextra
timestamp: 2025-10-29T00:10:17.224Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# MenuBarExtra

**Available on:** macOS 13.0+

> A scene that renders itself as a persistent control in the system menu bar.

```swift
struct MenuBarExtra<Label, Content> where Label : View, Content : View
```

## Overview

Use a `MenuBarExtra` when you want to provide access to commonly used functionality, even when your app is not active.

```swift
@main
struct AppWithMenuBarExtra: App {
    @AppStorage("showMenuBarExtra") private var showMenuBarExtra = true

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        MenuBarExtra(
            "App Menu Bar Extra", systemImage: "star",
            isInserted: $showMenuBarExtra)
        {
            StatusMenu()
        }
    }
}
```

Or alternatively, to create a utility app that only shows in the menu bar.

```swift
@main
struct UtilityApp: App {
    var body: some Scene {
        MenuBarExtra("Utility App", systemImage: "hammer") {
            AppMenu()
        }
    }
}
```

An app that only shows in the menu bar will be automatically terminated if the user removes the extra from the menu bar.

For apps that only show in the menu bar, a common behavior is for the app to not display its icon in either the Dock or the application switcher. To enable this behavior, set the [LSUIElement](/documentation/BundleResources/Information-Property-List/LSUIElement) flag in your app’s [Information-Property](/documentation/BundleResources/Information-Property-List) file to `true`.

For more complex or data rich menu bar extras, you can use the [window](/documentation/swiftui/menubarextrastyle/window) style, which displays a popover-like window from the menu bar icon that contains standard controls. You define the layout and contents of those controls with the content that you provide:

```swift
MenuBarExtra("Utility App", systemImage: "hammer") {
    ScrollView {
        LazyVGrid(...)
    }
}
.menuBarExtraStyle(.window)
```

## Conforms To

- [Scene](/documentation/swiftui/scene)

## Creating a menu bar extra

- [init(_:content:)](/documentation/swiftui/menubarextra/init(_:content:)) Creates a menu bar extra with a key for a localized string to use as the label. The extra defines the primary scene of an .
- [init(content:label:)](/documentation/swiftui/menubarextra/init(content:label:)) Creates a menu bar extra that will be displayed in the system menu bar, and defines the primary scene of an .
- [init(_:isInserted:content:)](/documentation/swiftui/menubarextra/init(_:isinserted:content:)) Creates a menu bar extra with a key for a localized string to use as the label. The item will be displayed in the system menu bar when the specified binding is set to . If the user removes the item from the menu bar, the binding will be set to .
- [init(isInserted:content:label:)](/documentation/swiftui/menubarextra/init(isinserted:content:label:)) Creates a menu bar extra. The item will be displayed in the system menu bar when the specified binding is set to . If the user removes the item from the menu bar, the binding will be set to .

## Creating a menu bar extra with an image

- [init(_:image:content:)](/documentation/swiftui/menubarextra/init(_:image:content:)) Creates a menu bar extra with an image to use as the items label. The provided title will be used by the accessibility system.
- [init(_:image:isInserted:content:)](/documentation/swiftui/menubarextra/init(_:image:isinserted:content:)) Creates a menu bar extra with an image to use as the items label. The provided title will be used by the accessibility system.
- [init(_:systemImage:content:)](/documentation/swiftui/menubarextra/init(_:systemimage:content:)) Creates a menu bar extra with a system image to use as the items label. The provided title will be used by the accessibility system.
- [init(_:systemImage:isInserted:content:)](/documentation/swiftui/menubarextra/init(_:systemimage:isinserted:content:)) Creates a menu bar extra with a system image to use as the items label. The provided title will be used by the accessibility system.

## Creating a menu bar extra

- [menuBarExtraStyle(_:)](/documentation/swiftui/scene/menubarextrastyle(_:))
- [MenuBarExtraStyle](/documentation/swiftui/menubarextrastyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
