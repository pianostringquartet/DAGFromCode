---
title: WindowManagerRole
description: Options for defining how a scene’s windows behave when used within a managed window context, such as full screen mode and Stage Manager.
source: https://developer.apple.com/documentation/swiftui/windowmanagerrole
timestamp: 2025-10-29T00:09:45.265Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# WindowManagerRole

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Options for defining how a scene’s windows behave when used within a managed window context, such as full screen mode and Stage Manager.

```swift
struct WindowManagerRole
```

## Overview

Use values of this type in conjunction with the [windowManagerRole(_:)](/documentation/swiftui/scene/windowmanagerrole(_:)) modifier to override the default system behavior.

For example, you can specify that a secondary `Window` scene should use the principal role for full screen and Stage Manager:

```swift
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        Window("Organizer", id: "organizer") {
            OrganizerView()
        }
        .windowManagerRole(.principal)
    }
}
```

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Type Properties

- [associated](/documentation/swiftui/windowmanagerrole/associated) The associated role. Windows derived from this scene can be shown alongside windows with a  role in either full screen or Stage Manager, but do not participate in those modes on their own.
- [automatic](/documentation/swiftui/windowmanagerrole/automatic) The automatic role. The type and configuration of the scene will be used to determine how its windows behave in full screen and Stage Manager.
- [principal](/documentation/swiftui/windowmanagerrole/principal) The principal role. Windows derived from this scene will show in full screen, if enabled, or in Stage Manager.

## Managing window behavior

- [windowManagerRole(_:)](/documentation/swiftui/scene/windowmanagerrole(_:))
- [WindowInteractionBehavior](/documentation/swiftui/windowinteractionbehavior)
- [windowDismissBehavior(_:)](/documentation/swiftui/view/windowdismissbehavior(_:))
- [windowFullScreenBehavior(_:)](/documentation/swiftui/view/windowfullscreenbehavior(_:))
- [windowMinimizeBehavior(_:)](/documentation/swiftui/view/windowminimizebehavior(_:))
- [windowResizeBehavior(_:)](/documentation/swiftui/view/windowresizebehavior(_:))
- [windowBackgroundDragBehavior(_:)](/documentation/swiftui/scene/windowbackgrounddragbehavior(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
