---
title: openSettings
description: A Settings presentation action stored in a view’s environment.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/opensettings
timestamp: 2025-10-29T00:09:49.725Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# openSettings

**Available on:** macOS 14.0+

> A Settings presentation action stored in a view’s environment.

```swift
var openSettings: OpenSettingsAction { get }
```

## Discussion

Use the `openSettings` environment value to get an [Open Settings Action](/documentation/swiftui/opensettingsaction) instance for a given [Environment](/documentation/swiftui/environment). Then call the instance to open a window. You call the instance directly because it defines a [callAsFunction()](/documentation/swiftui/opensettingsaction/callasfunction()) method that Swift calls when you call the instance.

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

## Managing a settings window

- [Settings](/documentation/swiftui/settings)
- [SettingsLink](/documentation/swiftui/settingslink)
- [OpenSettingsAction](/documentation/swiftui/opensettingsaction)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
