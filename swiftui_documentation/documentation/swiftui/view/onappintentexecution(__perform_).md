---
title: onAppIntentExecution(_:perform:)
description: Registers a handler to invoke in response to the specified app intent that your app receives.
source: https://developer.apple.com/documentation/swiftui/view/onappintentexecution(_:perform:)
timestamp: 2025-10-29T00:15:16.266Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onAppIntentExecution(_:perform:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, tvOS 26.0+, visionOS 26.0+

> Registers a handler to invoke in response to the specified app intent that your app receives.

```swift
nonisolated func onAppIntentExecution<I>(_ intent: I.Type = I.self, perform action: @escaping @MainActor (I) -> Void) -> some View where I : TargetContentProvidingIntent
```

## Parameters

**intent**

The type of App Intent that the `action` closure handles.



**action**

A closure that SwiftUI calls when the specified app intent is being performed. The closure takes the app intent instance as an input parameter.



## Return Value

A view that handles the specified app intent’s perform

## Discussion

Use this view modifier to receive instances in a particular scene within your app. The scene that SwiftUI routes the incoming user activity to depends on the structure of your app, what scenes are active, and other configuration. For more information, see [handlesExternalEvents(matching:)](/documentation/swiftui/scene/handlesexternalevents(matching:)).

If the app intent implements a perform() method, it will be called after the action closure.  This can be useful if your app intent supports running in the background via the AppIntent.IntentModes API

> [!NOTE]
> Usage of the app intent instance provided to the action closure is limited to inspecting parameter values, interactive requests like [requestValue(_:)](/documentation/AppIntents/IntentParameter/requestValue(_:)-592nd) or <doc://com.apple.documentation/documentation/appintents/intentparameter/needsvalueerror(_:) will not work.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
