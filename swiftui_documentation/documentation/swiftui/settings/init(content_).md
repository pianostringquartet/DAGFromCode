---
title: init(content:)
description: Creates a scene that presents an interface for viewing and modifying an app’s preferences.
source: https://developer.apple.com/documentation/swiftui/settings/init(content:)
timestamp: 2025-10-29T00:14:49.959Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [settings](/documentation/swiftui/settings)

**Initializer**

# init(content:)

**Available on:** macOS 11.0+

> Creates a scene that presents an interface for viewing and modifying an app’s preferences.

```swift
init(@ViewBuilder content: () -> Content)
```

## Parameters

**content**

A view that represents the content of the scene.



## Discussion

Use `Settings(content:)` to add a preferences scene when you declare your app using the [App](/documentation/swiftui/app) protocol.

The example below shows the view content for the settings scene added to the SwiftUI app delegate:

```swift
@main
struct MacSwiftUISnippets: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        #if os(macOS)
        Settings(content: {
            SettingsView()
        }
        #endif
    }
}
```

When you use an [App](/documentation/swiftui/app) declaration for multiple platforms, compile the settings scene only in macOS, as shown in the example above.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
