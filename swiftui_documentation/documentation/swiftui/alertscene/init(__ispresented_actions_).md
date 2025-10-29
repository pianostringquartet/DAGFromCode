---
title: init(_:isPresented:actions:)
description: Creates an alert scene with a title and a set of actions.
source: https://developer.apple.com/documentation/swiftui/alertscene/init(_:ispresented:actions:)
timestamp: 2025-10-29T00:12:57.258Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [alertscene](/documentation/swiftui/alertscene)

**Initializer**

# init(_:isPresented:actions:)

**Available on:** macOS 15.0+

> Creates an alert scene with a title and a set of actions.

```swift
init(_ title: Text, isPresented: Binding<Bool>, @ViewBuilder actions: () -> Actions) where Message == EmptyView
```

## Parameters

**title**

The title of the alert.



**isPresented**

A binding to a Boolean value that determines whether to present the alert. When the user presses or taps one of the alert’s actions, the system sets this value to `false` and dismisses.



**actions**

A view builder returning the actions for the dialog.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
