---
title: AlertScene
description: A scene that renders itself as a standalone alert dialog.
source: https://developer.apple.com/documentation/swiftui/alertscene
timestamp: 2025-10-29T00:14:00.437Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# AlertScene

**Available on:** macOS 15.0+

> A scene that renders itself as a standalone alert dialog.

```swift
struct AlertScene<Actions, Message> where Actions : View, Message : View
```

## Overview

Alert scenes are not attached to any particular window, and present themselves in the center of the current display. The dialog must be dismissed before any further interaction with the app is permitted.

```swift
@main
struct MyApp: App {
    @State var showLoginAlert = true
    @State var loggedIn = false

    var body: some Scene {
        Window("Welcome User Window", id:"WelcomeWindow") {
            ...
        }
        .defaultLaunchBehavior(loggedIn ? .presented : .suppressed)

        AlertScene("Login Required", isPresented: $showLoginAlert) {
            Button("OK") {
                ...
            }
        }
    }
}
```

All actions present in the ViewBuilder will dismiss the alert. Like the alert modifier, you can determine the role of the buttons with `.cancel` or `.destructive`. If no actions are present, we will automatically include an OK button for dismissal.

## Conforms To

- [Scene](/documentation/swiftui/scene)

## Initializers

- [init(_:isPresented:actions:)](/documentation/swiftui/alertscene/init(_:ispresented:actions:)) Creates an alert scene with a title and a set of actions.
- [init(_:isPresented:actions:message:)](/documentation/swiftui/alertscene/init(_:ispresented:actions:message:)) Creates an alert scene with a title, a set of actions, and a message.
- [init(_:isPresented:presenting:actions:)](/documentation/swiftui/alertscene/init(_:ispresented:presenting:actions:)) Creates an alert scene, using the given data to produce the alert’s content with a title, and a set of actions. Note that this creates a text view on your behalf.
- [init(_:isPresented:presenting:actions:message:)](/documentation/swiftui/alertscene/init(_:ispresented:presenting:actions:message:)) Creates an alert scene, using the given data to produce the alert’s content with a title, a set of actions, and a message. Note that this creates a text view on your behalf.

## Presenting an alert

- [alert(_:isPresented:actions:)](/documentation/swiftui/view/alert(_:ispresented:actions:))
- [alert(_:isPresented:presenting:actions:)](/documentation/swiftui/view/alert(_:ispresented:presenting:actions:))
- [alert(isPresented:error:actions:)](/documentation/swiftui/view/alert(ispresented:error:actions:))
- [alert(_:isPresented:actions:message:)](/documentation/swiftui/view/alert(_:ispresented:actions:message:))
- [alert(_:isPresented:presenting:actions:message:)](/documentation/swiftui/view/alert(_:ispresented:presenting:actions:message:))
- [alert(isPresented:error:actions:message:)](/documentation/swiftui/view/alert(ispresented:error:actions:message:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
