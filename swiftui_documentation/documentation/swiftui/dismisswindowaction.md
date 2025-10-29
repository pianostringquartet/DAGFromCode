---
title: DismissWindowAction
description: An action that dismisses a window associated to a particular scene.
source: https://developer.apple.com/documentation/swiftui/dismisswindowaction
timestamp: 2025-10-29T00:14:52.590Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# DismissWindowAction

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> An action that dismisses a window associated to a particular scene.

```swift
@MainActor @preconcurrency struct DismissWindowAction
```

## Overview

Use the [dismiss Window](/documentation/swiftui/environmentvalues/dismisswindow) environment value to get the instance of this structure for a given [Environment](/documentation/swiftui/environment). Then call the instance to dismiss a window. You call the instance directly because it defines a [callAsFunction(id:)](/documentation/swiftui/dismisswindowaction/callasfunction(id:)) method that Swift calls when you call the instance.

For example, you can define a button that closes an auxiliary window:

```swift
@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        #if os(macOS)
        Window("Auxiliary", id: "auxiliary") {
            AuxiliaryContentView()
        }
        #endif
    }
}

struct DismissWindowButton: View {
    @Environment(\.dismissWindow) private var dismissWindow

    var body: some View {
        Button("Close Auxiliary Window") {
            dismissWindow(id: "auxiliary")
        }
    }
}
```

If the window was opened with [push Window](/documentation/swiftui/environmentvalues/pushwindow), the original presenting will reappear when this action is performed.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Calling the action

- [callAsFunction()](/documentation/swiftui/dismisswindowaction/callasfunction()) Dismisses the current window.
- [callAsFunction(id:)](/documentation/swiftui/dismisswindowaction/callasfunction(id:)) Dismisses the window that’s associated with the specified identifier.
- [callAsFunction(id:value:)](/documentation/swiftui/dismisswindowaction/callasfunction(id:value:)) Dismisses the window defined by the window group that is presenting the specified value type and that’s associated with the specified identifier.
- [callAsFunction(value:)](/documentation/swiftui/dismisswindowaction/callasfunction(value:)) Dismisses the window defined by the window group that is presenting the specified value type.

## Closing windows

- [dismissWindow](/documentation/swiftui/environmentvalues/dismisswindow)
- [dismiss](/documentation/swiftui/environmentvalues/dismiss)
- [DismissAction](/documentation/swiftui/dismissaction)
- [DismissBehavior](/documentation/swiftui/dismissbehavior)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
