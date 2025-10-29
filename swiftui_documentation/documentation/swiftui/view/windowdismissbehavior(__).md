---
title: windowDismissBehavior(_:)
description: Configures the dismiss functionality for the window enclosing .
source: https://developer.apple.com/documentation/swiftui/view/windowdismissbehavior(_:)
timestamp: 2025-10-29T00:09:19.390Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# windowDismissBehavior(_:)

**Available on:** macOS 15.0+

> Configures the dismiss functionality for the window enclosing .

```swift
nonisolated func windowDismissBehavior(_ behavior: WindowInteractionBehavior) -> some View
```

## Parameters

**behavior**

The dismiss behavior.



## Discussion

By default, the window dismiss functionality is determined by the scene, as well as any modifiers applied to it.

You can use this modifier to override the default behavior.

For example, you can create a welcome workflow window which disables the dismiss functionality:

```swift
struct MyApp: App {
    var body: some Scene {
        ...
        Window("Welcome", id: "welcome") {
            WelcomeView()
                .windowDismissBehavior(.disabled)
        }
    }
}
```

## Managing window behavior

- [WindowManagerRole](/documentation/swiftui/windowmanagerrole)
- [windowManagerRole(_:)](/documentation/swiftui/scene/windowmanagerrole(_:))
- [WindowInteractionBehavior](/documentation/swiftui/windowinteractionbehavior)
- [windowFullScreenBehavior(_:)](/documentation/swiftui/view/windowfullscreenbehavior(_:))
- [windowMinimizeBehavior(_:)](/documentation/swiftui/view/windowminimizebehavior(_:))
- [windowResizeBehavior(_:)](/documentation/swiftui/view/windowresizebehavior(_:))
- [windowBackgroundDragBehavior(_:)](/documentation/swiftui/scene/windowbackgrounddragbehavior(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
