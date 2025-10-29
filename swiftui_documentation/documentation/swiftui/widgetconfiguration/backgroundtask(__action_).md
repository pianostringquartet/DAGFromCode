---
title: backgroundTask(_:action:)
description: Runs the given action when the system provides a background task.
source: https://developer.apple.com/documentation/swiftui/widgetconfiguration/backgroundtask(_:action:)
timestamp: 2025-10-29T00:11:16.992Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [widgetconfiguration](/documentation/swiftui/widgetconfiguration)

**Instance Method**

# backgroundTask(_:action:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+, watchOS 9.0+

> Runs the given action when the system provides a background task.

```swift
nonisolated func backgroundTask<D, R>(_ task: BackgroundTask<D, R>, action: @escaping (D) async -> R) -> some WidgetConfiguration where D : Sendable, R : Sendable
```

## Parameters

**task**

The type of task the action responds to.



**action**

The closure that is called when the system provides a task matching the provided task.



## Discussion

When the system wakes your app or extension for one or more background tasks, it will call any actions associated with matching tasks. When your async actions return, the system will put your app back into a suspended state. In Widget Extensions, this modifier can be used to handle URL Session background tasks with [url Session](/documentation/swiftui/backgroundtask/urlsession).

## Managing background tasks

- [onBackgroundURLSessionEvents(matching:_:)](/documentation/swiftui/widgetconfiguration/onbackgroundurlsessionevents(matching:_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
