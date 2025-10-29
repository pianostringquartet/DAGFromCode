---
title: init(_:isPresented:presenting:actions:)
description: Creates an alert scene, using the given data to produce the alert’s content with a title, and a set of actions. Note that this creates a text view on your behalf.
source: https://developer.apple.com/documentation/swiftui/alertscene/init(_:ispresented:presenting:actions:)
timestamp: 2025-10-29T00:12:50.363Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [alertscene](/documentation/swiftui/alertscene)

**Initializer**

# init(_:isPresented:presenting:actions:)

**Available on:** macOS 15.0+

> Creates an alert scene, using the given data to produce the alert’s content with a title, and a set of actions. Note that this creates a text view on your behalf.

```swift
init<S, T>(_ title: S, isPresented: Binding<Bool>, presenting data: T?, @ViewBuilder actions: (T) -> Actions) where Message == EmptyView, S : StringProtocol
```

## Parameters

**title**

The title of the alert.



**isPresented**

A binding to a Boolean value that determines whether to present the alert. When the user presses or taps one of the alert’s actions, the system sets this value to `false` and dismisses.



**data**

A source of truth that is passed to the alert to populate the message and actions.



**actions**

A view builder returning the actions for the dialog.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
