---
title: windowMinimizeBehavior(_:)
description: Configures the minimize functionality for the window enclosing .
source: https://developer.apple.com/documentation/swiftui/view/windowminimizebehavior(_:)
timestamp: 2025-10-29T00:14:27.195Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# windowMinimizeBehavior(_:)

**Available on:** macOS 15.0+

> Configures the minimize functionality for the window enclosing .

```swift
nonisolated func windowMinimizeBehavior(_ behavior: WindowInteractionBehavior) -> some View
```

## Parameters

**behavior**

The resize behavior.



## Discussion

On macOS, windows which support being minimized will move into the Dock when the minimize button is clicked, or the corresponding menu item is selected.

By default, the window minimize functionality is determined by the scene, as well as any modifiers applied to it.

You can use this modifier to override the default behavior.

For example, you can create a custom “About” window which disables the minimize functionality:

```swift
struct MyApp: App {
    var body: some Scene {
        ...
        Window("About MyApp", id: "about") {
            AboutView()
                .windowResizeBehavior(.disabled)
                .windowMinimizeBehavior(.disabled)
        }
        .windowResizability(.contentSize)
    }
}
```

## Managing window behavior

- [WindowManagerRole](/documentation/swiftui/windowmanagerrole)
- [windowManagerRole(_:)](/documentation/swiftui/scene/windowmanagerrole(_:))
- [WindowInteractionBehavior](/documentation/swiftui/windowinteractionbehavior)
- [windowDismissBehavior(_:)](/documentation/swiftui/view/windowdismissbehavior(_:))
- [windowFullScreenBehavior(_:)](/documentation/swiftui/view/windowfullscreenbehavior(_:))
- [windowResizeBehavior(_:)](/documentation/swiftui/view/windowresizebehavior(_:))
- [windowBackgroundDragBehavior(_:)](/documentation/swiftui/scene/windowbackgrounddragbehavior(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
