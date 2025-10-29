---
title: windowBackgroundDragBehavior(_:)
description: Configures the behavior of dragging a window by its background.
source: https://developer.apple.com/documentation/swiftui/scene/windowbackgrounddragbehavior(_:)
timestamp: 2025-10-29T00:09:21.518Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# windowBackgroundDragBehavior(_:)

**Available on:** macOS 15.0+

> Configures the behavior of dragging a window by its background.

```swift
nonisolated func windowBackgroundDragBehavior(_ behavior: WindowInteractionBehavior) -> some Scene
```

## Parameters

**behavior**

The behavior of dragging the modified window by its background.



## Return Value

A scene configured with the specified behavior of dragging it by its background background.

## Discussion

By default, or when you apply the [automatic](/documentation/swiftui/windowinteractionbehavior/automatic) behavior, the system will determine the best suitable behavior based on the configuration of the modified scene.

You can use this modifier to override the default behavior. For example, to always enable dragging a window by its background:

```swift
struct MyApp: App {
    var body: some Scene {
        Window("About MyApp", id: "about") {
            AboutView()
        }
        .windowBackgroundDragBehavior(.enabled)
    }
}
```

If you want to let your users drag your window by a specific view instead of (or in addition to) letting them drag it by its background, use [Window Drag Gesture](/documentation/swiftui/windowdraggesture).

Applying the [enabled](/documentation/swiftui/windowinteractionbehavior/enabled) behavior is equivalent to adding a [Window Drag Gesture](/documentation/swiftui/windowdraggesture) to the window’s background view.

## Managing window behavior

- [WindowManagerRole](/documentation/swiftui/windowmanagerrole)
- [windowManagerRole(_:)](/documentation/swiftui/scene/windowmanagerrole(_:))
- [WindowInteractionBehavior](/documentation/swiftui/windowinteractionbehavior)
- [windowDismissBehavior(_:)](/documentation/swiftui/view/windowdismissbehavior(_:))
- [windowFullScreenBehavior(_:)](/documentation/swiftui/view/windowfullscreenbehavior(_:))
- [windowMinimizeBehavior(_:)](/documentation/swiftui/view/windowminimizebehavior(_:))
- [windowResizeBehavior(_:)](/documentation/swiftui/view/windowresizebehavior(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
