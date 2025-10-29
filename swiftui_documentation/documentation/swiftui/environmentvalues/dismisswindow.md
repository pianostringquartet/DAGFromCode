---
title: dismissWindow
description: A window dismissal action stored in a view’s environment.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/dismisswindow
timestamp: 2025-10-29T00:12:44.851Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# dismissWindow

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> A window dismissal action stored in a view’s environment.

```swift
var dismissWindow: DismissWindowAction { get }
```

## Discussion

Use the `dismissWindow` environment value to get an [Dismiss Window Action](/documentation/swiftui/dismisswindowaction) instance for a given [Environment](/documentation/swiftui/environment). Then call the instance to dismiss a window. You call the instance directly because it defines a [callAsFunction(id:)](/documentation/swiftui/dismisswindowaction/callasfunction(id:)) method that Swift calls when you call the instance.

For example, you can define a button that dismisses an auxiliary window:

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

If the window was opened with [push Window](/documentation/swiftui/environmentvalues/pushwindow), the presenting window will reappear when this action is performed.

## Closing windows

- [DismissWindowAction](/documentation/swiftui/dismisswindowaction)
- [dismiss](/documentation/swiftui/environmentvalues/dismiss)
- [DismissAction](/documentation/swiftui/dismissaction)
- [DismissBehavior](/documentation/swiftui/dismissbehavior)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
