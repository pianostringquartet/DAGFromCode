---
title: backgroundTask(_:action:)
description: Runs the specified action when the system provides a background task.
source: https://developer.apple.com/documentation/swiftui/scene/backgroundtask(_:action:)
timestamp: 2025-10-29T00:10:22.237Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# backgroundTask(_:action:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Runs the specified action when the system provides a background task.

```swift
nonisolated func backgroundTask<D, R>(_ task: BackgroundTask<D, R>, action: @escaping (D) async -> R) -> some Scene where D : Sendable, R : Sendable
```

## Parameters

**task**

The type of task with which to associate the provided action.



**action**

An async closure that the system runs for the specified task type.



## Discussion

When the system wakes your app or extension for one or more background tasks, it will call any actions associated with matching tasks. When your async actions return, the system put your app back into a suspended state. The system considers the task completed when the action closure that you provide returns. If the action closure has not returned when the task runs out of time to complete, the system cancels the task. Use doc://com.apple.documentation/documentation/Swift/withTaskCancellationHandler(operation:onCancel:) to observe whether the task is low on runtime.

```swift
/// An example of a Weather Application.
struct WeatherApp: App {
    var body: some Scene {
        WindowGroup {
            Text("Responds to App Refresh")
        }
        .backgroundTask(.appRefresh("WEATHER_DATA")) {
            await updateWeatherData()
        }
    }
    func updateWeatherData() async {
        // fetches new weather data and updates app state
    }
}
```

## Handling background tasks

- [BackgroundTask](/documentation/swiftui/backgroundtask)
- [SnapshotData](/documentation/swiftui/snapshotdata)
- [SnapshotResponse](/documentation/swiftui/snapshotresponse)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
