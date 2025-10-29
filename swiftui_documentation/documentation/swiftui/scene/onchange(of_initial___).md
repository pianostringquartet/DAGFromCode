---
title: onChange(of:initial:_:)
description: Adds an action to perform when the given value changes.
source: https://developer.apple.com/documentation/swiftui/scene/onchange(of:initial:_:)
timestamp: 2025-10-29T00:15:13.704Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# onChange(of:initial:_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Adds an action to perform when the given value changes.

```swift
nonisolated func onChange<V>(of value: V, initial: Bool = false, _ action: @escaping () -> Void) -> some Scene where V : Equatable
```

## Parameters

**value**

The value to check when determining whether to run the closure. The value must conform to the [Equatable](/documentation/Swift/Equatable) protocol.



**initial**

Whether the action should be run when this scene initially appears.



**action**

A closure to run when the value changes.



## Return Value

A scene that triggers an action in response to a change.

## Discussion

Use this modifier to trigger a side effect when a value changes, like the value associated with an [Environment](/documentation/swiftui/environment) key or a [Binding](/documentation/swiftui/binding). For example, you can clear a cache when you notice that a scene moves to the background:

```swift
struct MyScene: Scene {
    @Environment(\.locale) private var locale
    @StateObject private var cache = LocalizationDataCache()

    var body: some Scene {
        WindowGroup {
            MyRootView(cache: cache)
        }
        .onChange(of: locale) {
            cache.empty()
        }
    }
}
```

The system may call the action closure on the main actor, so avoid long-running tasks in the closure. If you need to perform such tasks, detach an asynchronous background task:

```swift
.onChange(of: locale) {
    Task.detached(priority: .background) {
        // ...
    }
}
```

When the value changes, the new version of the closure will be called, so any captured values will have their values from the time that the observed value has its new value.

## Watching for changes

- [handlesExternalEvents(matching:)](/documentation/swiftui/scene/handlesexternalevents(matching:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
