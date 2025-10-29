---
title: init(_:isPresented:presenting:actions:message:)
description: Creates an alert scene, using the given data to produce the alert’s content with a title, a set of actions, and a message. Note that this creates a text view on your behalf.
source: https://developer.apple.com/documentation/swiftui/alertscene/init(_:ispresented:presenting:actions:message:)
timestamp: 2025-10-29T00:10:24.559Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [alertscene](/documentation/swiftui/alertscene)

**Initializer**

# init(_:isPresented:presenting:actions:message:)

**Available on:** macOS 15.0+

> Creates an alert scene, using the given data to produce the alert’s content with a title, a set of actions, and a message. Note that this creates a text view on your behalf.

```swift
init<S, T>(_ title: S, isPresented: Binding<Bool>, presenting data: T?, @ViewBuilder actions: (T) -> Actions, @ViewBuilder message: (T) -> Message) where S : StringProtocol
```

## Parameters

**title**

A text string used as the title of the alert.



**isPresented**

A binding to a Boolean value that determines whether to present the alert. When the user presses or taps one of the alert’s actions, the system sets this value to `false` and dismisses.



**data**

A source of truth that is passed to the alert to populate the message and actions.



**actions**

A view builder returning the actions for the dialog.



**message**

A view builder returning the message for the dialog.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
