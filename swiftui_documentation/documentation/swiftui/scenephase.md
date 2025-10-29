---
title: ScenePhase
description: An indication of a scene’s operational state.
source: https://developer.apple.com/documentation/swiftui/scenephase
timestamp: 2025-10-29T00:14:20.404Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Enumeration**

# ScenePhase

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> An indication of a scene’s operational state.

```swift
enum ScenePhase
```

## Overview

The system moves your app’s [Scene](/documentation/swiftui/scene) instances through phases that reflect a scene’s operational state. You can trigger actions when the phase changes. Read the current phase by observing the [scene Phase](/documentation/swiftui/environmentvalues/scenephase) value in the [Environment](/documentation/swiftui/environment):

```swift
@Environment(\.scenePhase) private var scenePhase
```

How you interpret the value depends on where it’s read from. If you read the phase from inside a [View](/documentation/swiftui/view) instance, you obtain a value that reflects the phase of the scene that contains the view. The following example uses the [onChange(of:initial:_:)](/documentation/swiftui/view/onchange(of:initial:_:)-8wgw9) method to enable a timer whenever the enclosing scene enters the [active](/documentation/swiftui/scenephase/active) phase and disable the timer when entering any other phase:

```swift
struct MyView: View {
    @ObservedObject var model: DataModel
    @Environment(\.scenePhase) private var scenePhase

    var body: some View {
        TimerView()
            .onChange(of: scenePhase) {
                model.isTimerRunning = (scenePhase == .active)
            }
    }
}
```

If you read the phase from within an [App](/documentation/swiftui/app) instance, you obtain an aggregate value that reflects the phases of all the scenes in your app. The app reports a value of [active](/documentation/swiftui/scenephase/active) if any scene is active, or a value of [inactive](/documentation/swiftui/scenephase/inactive) when no scenes are active. This includes multiple scene instances created from a single scene declaration; for example, from a [Window Group](/documentation/swiftui/windowgroup). When an app enters the [background](/documentation/swiftui/scenephase/background) phase, expect the app to terminate soon after. You can use that opportunity to free any resources:

```swift
@main
struct MyApp: App {
    @Environment(\.scenePhase) private var scenePhase

    var body: some Scene {
        WindowGroup {
            MyRootView()
        }
        .onChange(of: scenePhase) {
            if scenePhase == .background {
                // Perform cleanup when all scenes within
                // MyApp go to the background.
            }
        }
    }
}
```

## Conforms To

- [Comparable](/documentation/Swift/Comparable)
- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting scene phases

- [ScenePhase.active](/documentation/swiftui/scenephase/active) The scene is in the foreground and interactive.
- [ScenePhase.inactive](/documentation/swiftui/scenephase/inactive) The scene is in the foreground but should pause its work.
- [ScenePhase.background](/documentation/swiftui/scenephase/background) The scene isn’t currently visible in the UI.

## Monitoring scene life cycle

- [scenePhase](/documentation/swiftui/environmentvalues/scenephase)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
