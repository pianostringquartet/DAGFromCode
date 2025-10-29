---
title: NSHostingSceneRepresentation
description: An AppKit type that hosts and can present SwiftUI scenes
source: https://developer.apple.com/documentation/swiftui/nshostingscenerepresentation
timestamp: 2025-10-29T00:14:31.470Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Class**

# NSHostingSceneRepresentation

**Available on:** macOS 26.0+

> An AppKit type that hosts and can present SwiftUI scenes

```swift
@MainActor class NSHostingSceneRepresentation<Content> where Content : Scene
```

## Overview

Use instances of this type with `NSApplication.addSceneRepresentation(_:)` to include SwiftUI scene functionality in an app which uses the AppKit app lifecycle.

For example, you can add a `Settings` scene to your app and present it when the corresponding menu item is selected:

```swift
import AppKit
import SwiftUI

@main
class ApplicationDelegate: NSApplicationDelegate {
    let settingsScene = NSHostingSceneRepresentation {
        Settings {
            SettingsView()
        }
    }

    func applicationWillFinishLaunching(_ notification: Notification) {
        NSApplication.shared.addSceneRepresentation(settingsScene)
    }

    @IBAction func showAppSettings(_ sender: NSMenuItem) {
        settingsScene.environment.openSettings()
    }
}
```

## Initializers

- [init(rootScene:)](/documentation/swiftui/nshostingscenerepresentation/init(rootscene:)) Creates a new hosting scene representation for the specified scene(s).

## Instance Properties

- [environment](/documentation/swiftui/nshostingscenerepresentation/environment) The environment for any scene(s) being represented by .

## Displaying SwiftUI views in AppKit

- [Unifying your app’s animations](/documentation/swiftui/unifying-your-app-s-animations)
- [NSHostingController](/documentation/swiftui/nshostingcontroller)
- [NSHostingView](/documentation/swiftui/nshostingview)
- [NSHostingMenu](/documentation/swiftui/nshostingmenu)
- [NSHostingSizingOptions](/documentation/swiftui/nshostingsizingoptions)
- [NSHostingSceneBridgingOptions](/documentation/swiftui/nshostingscenebridgingoptions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
