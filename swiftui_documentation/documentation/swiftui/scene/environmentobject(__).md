---
title: environmentObject(_:)
description: Supplies an  to a view subhierarchy.
source: https://developer.apple.com/documentation/swiftui/scene/environmentobject(_:)
timestamp: 2025-10-29T00:14:26.436Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# environmentObject(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Supplies an  to a view subhierarchy.

```swift
nonisolated func environmentObject<T>(_ object: T) -> some Scene where T : ObservableObject
```

## Parameters

**object**

The object to store and make available to the scene’s subhierarchy.



## Discussion

The object can be read by any child by using `EnvironmentObject`:

```swift
final class Profile: ObservableObject { ... }

@main
struct MyApp: App {
    var body: some View {
        WindowGroup {
            ContentView()
        }
        .environment(ProfileService.currentProfile)
    }
}
```

You then read the object inside `ContentView` or one of its descendants using the [Environment Object](/documentation/swiftui/environmentobject) property wrapper:

```swift
struct ContentView: View {
    @EnvironmentObject private var currentAccount: Account

    var body: some View { ... }
}
```

## Distributing model data throughout your app

- [environmentObject(_:)](/documentation/swiftui/view/environmentobject(_:))
- [EnvironmentObject](/documentation/swiftui/environmentobject)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
