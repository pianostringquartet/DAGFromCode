---
title: windowFullScreenBehavior(_:)
description: Configures the full screen functionality for the window enclosing .
source: https://developer.apple.com/documentation/swiftui/view/windowfullscreenbehavior(_:)
timestamp: 2025-10-29T00:13:43.507Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# windowFullScreenBehavior(_:)

**Available on:** macOS 15.0+

> Configures the full screen functionality for the window enclosing .

```swift
nonisolated func windowFullScreenBehavior(_ behavior: WindowInteractionBehavior) -> some View
```

## Parameters

**behavior**

The full screen behavior.



## Discussion

By default, the window full screen functionality is determined by the scene, as well as any modifiers applied to it. Additionally, when using the [windowResizability(_:)](/documentation/swiftui/scene/windowresizability(_:)) modifier, the maximum size of the window’s contents will also determine whether a window can be made full screen.

You can use this modifier to override the default behavior.

For example, you can specify that a window cannot enter full screen mode:

```swift
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .windowFullScreenBehavior(.disabled)
        }
    }
}
```

## Managing window behavior

- [WindowManagerRole](/documentation/swiftui/windowmanagerrole)
- [windowManagerRole(_:)](/documentation/swiftui/scene/windowmanagerrole(_:))
- [WindowInteractionBehavior](/documentation/swiftui/windowinteractionbehavior)
- [windowDismissBehavior(_:)](/documentation/swiftui/view/windowdismissbehavior(_:))
- [windowMinimizeBehavior(_:)](/documentation/swiftui/view/windowminimizebehavior(_:))
- [windowResizeBehavior(_:)](/documentation/swiftui/view/windowresizebehavior(_:))
- [windowBackgroundDragBehavior(_:)](/documentation/swiftui/scene/windowbackgrounddragbehavior(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
