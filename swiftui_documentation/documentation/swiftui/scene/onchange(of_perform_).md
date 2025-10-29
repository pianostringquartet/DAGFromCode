---
title: onChange(of:perform:)
description: Adds an action to perform when the given value changes.
source: https://developer.apple.com/documentation/swiftui/scene/onchange(of:perform:)
timestamp: 2025-10-29T00:10:25.083Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# onChange(of:perform:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Adds an action to perform when the given value changes.

```swift
nonisolated func onChange<V>(of value: V, perform action: @escaping (V) -> Void) -> some Scene where V : Equatable
```

## Parameters

**value**

The value to check when determining whether to run the closure. The value must conform to the [Equatable](/documentation/Swift/Equatable) protocol.



**action**

A closure to run when the value changes. The closure provides a single `newValue` parameter that indicates the changed value.



## Return Value

A scene that triggers an action in response to a change.

## Discussion

Use this modifier to trigger a side effect when a value changes, like the value associated with an [Environment](/documentation/swiftui/environment) value or a [Binding](/documentation/swiftui/binding). For example, you can clear a cache when you notice that a scene moves to the background:

```swift
struct MyScene: Scene {
    @Environment(\.scenePhase) private var scenePhase
    @StateObject private var cache = DataCache()

    var body: some Scene {
        WindowGroup {
            MyRootView()
        }
        .onChange(of: scenePhase) { newScenePhase in
            if newScenePhase == .background {
                cache.empty()
            }
        }
    }
}
```

The system may call the action closure on the main actor, so avoid long-running tasks in the closure. If you need to perform such tasks, detach an asynchronous background task:

```swift
.onChange(of: scenePhase) { newScenePhase in
    if newScenePhase == .background {
        Task.detached(priority: .background) {
            // ...
        }
    }
}
```

The system passes the new value into the closure. If you need the old value, capture it in the closure.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
