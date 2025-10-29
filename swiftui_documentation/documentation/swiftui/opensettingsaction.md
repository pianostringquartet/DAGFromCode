---
title: OpenSettingsAction
description: An action that presents the settings scene for an app.
source: https://developer.apple.com/documentation/swiftui/opensettingsaction
timestamp: 2025-10-29T00:15:22.722Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# OpenSettingsAction

**Available on:** macOS 14.0+

> An action that presents the settings scene for an app.

```swift
@MainActor @preconcurrency struct OpenSettingsAction
```

## Overview

Use the [open Settings](/documentation/swiftui/environmentvalues/opensettings) environment value to get the instance of this structure for a given [Environment](/documentation/swiftui/environment). Then call the instance to open a window. You call the instance directly because it defines a [callAsFunction()](/documentation/swiftui/opensettingsaction/callasfunction()) method that Swift calls when you call the instance.

For example, you can define a button that opens the settings window to a particular tab:

```swift
@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        #if os(macOS)
        Settings {
            SettingsView()
        }
        #endif
    }
}

struct SettingsView: View {
    @AppStorage("selectedSettingsTab")
    private var selectedSettingsTab = SettingsTab.general

    var body: some View {
        TabView(selection: $selectedSettingsTab) {
            GeneralSettings()
            AdvancedSettings()
        }
    }
}

struct AdvancedSettingsButton: View {
    @AppStorage("selectedSettingsTab")
    private var selectedSettingsTab = SettingsTab.general

    @Environment(\.openSettings) private var openSettings

    var body: some View {
        Button("Open Advanced Settings…") {
            selectedSettingsTab = .advanced
            openSettings()
        }
    }
}

enum SettingsTab: Int {
    case general
    case advanced
}
```

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Instance Methods

- [callAsFunction()](/documentation/swiftui/opensettingsaction/callasfunction()) Opens the window associated to the  scene defined by this app, if one exists.

## Managing a settings window

- [Settings](/documentation/swiftui/settings)
- [SettingsLink](/documentation/swiftui/settingslink)
- [openSettings](/documentation/swiftui/environmentvalues/opensettings)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
