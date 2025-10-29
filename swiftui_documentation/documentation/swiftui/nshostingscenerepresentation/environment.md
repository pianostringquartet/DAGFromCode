---
title: environment
description: The environment for any scene(s) being represented by .
source: https://developer.apple.com/documentation/swiftui/nshostingscenerepresentation/environment
timestamp: 2025-10-29T00:12:02.862Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nshostingscenerepresentation](/documentation/swiftui/nshostingscenerepresentation)

**Instance Property**

# environment

**Available on:** macOS 26.0+

> The environment for any scene(s) being represented by .

```swift
@MainActor var environment: EnvironmentValues { get }
```

## Discussion

Use the environment values to programmatically present a scene’s window.

For example, you can present the window for a `Settings` scene using `OpenSettingsAction` when a menu item is selected:

```swift
let settingsScene = NSHostingSceneRepresentation {
    Settings {
        SettingsView()
    }
}

@IBAction func showAppSettings(_ sender: NSMenuItem) {
    settingsScene.environment.openSettings()
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
