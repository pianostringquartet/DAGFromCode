---
title: WindowInteractionBehavior
description: Options for enabling and disabling window interaction behaviors.
source: https://developer.apple.com/documentation/swiftui/windowinteractionbehavior
timestamp: 2025-10-29T00:11:07.443Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# WindowInteractionBehavior

**Available on:** macOS 15.0+

> Options for enabling and disabling window interaction behaviors.

```swift
struct WindowInteractionBehavior
```

## Overview

Use values of this type in conjunction with the following view and scene modifiers to adjust the supported functionality for the window:

- [windowDismissBehavior(_:)](/documentation/swiftui/view/windowdismissbehavior(_:))
- [windowMinimizeBehavior(_:)](/documentation/swiftui/view/windowminimizebehavior(_:))
- [windowFullScreenBehavior(_:)](/documentation/swiftui/view/windowfullscreenbehavior(_:))
- [windowResizeBehavior(_:)](/documentation/swiftui/view/windowresizebehavior(_:))
- [windowBackgroundDragBehavior(_:)](/documentation/swiftui/scene/windowbackgrounddragbehavior(_:))

For example, you can create a custom “About” window which only allows for dismissal:

```swift
struct MyApp: App {
    var body: some Scene {
        ...
        Window("About MyApp", id: "about") {
            AboutView()
                .windowMinimizeBehavior(.disabled)
                .windowResizeBehavior(.disabled)
        }
        .windowResizability(.contentSize)
    }
}
```

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Type Properties

- [automatic](/documentation/swiftui/windowinteractionbehavior/automatic) The automatic behavior. The associated window behavior will be enabled or disabled depending on the configuration of the enclosing .
- [disabled](/documentation/swiftui/windowinteractionbehavior/disabled) The disabled behavior. The associated window interaction behavior will be disabled.
- [enabled](/documentation/swiftui/windowinteractionbehavior/enabled) The enabled behavior. The associated window interaction behavior will be enabled.

## Managing window behavior

- [WindowManagerRole](/documentation/swiftui/windowmanagerrole)
- [windowManagerRole(_:)](/documentation/swiftui/scene/windowmanagerrole(_:))
- [windowDismissBehavior(_:)](/documentation/swiftui/view/windowdismissbehavior(_:))
- [windowFullScreenBehavior(_:)](/documentation/swiftui/view/windowfullscreenbehavior(_:))
- [windowMinimizeBehavior(_:)](/documentation/swiftui/view/windowminimizebehavior(_:))
- [windowResizeBehavior(_:)](/documentation/swiftui/view/windowresizebehavior(_:))
- [windowBackgroundDragBehavior(_:)](/documentation/swiftui/scene/windowbackgrounddragbehavior(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
