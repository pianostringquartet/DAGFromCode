---
title: defaultAppStorage(_:)
description: The default store used by  contained within the scene and its view content.
source: https://developer.apple.com/documentation/swiftui/scene/defaultappstorage(_:)
timestamp: 2025-10-29T00:13:31.175Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# defaultAppStorage(_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> The default store used by  contained within the scene and its view content.

```swift
nonisolated func defaultAppStorage(_ store: UserDefaults) -> some Scene
```

## Parameters

**store**

The user defaults to use as the default store for `AppStorage`.



## Discussion

If unspecified, the default store for a view hierarchy is `UserDefaults.standard`, but can be set a to a custom one. For example, sharing defaults between an app and an extension can override the default store to one created with `UserDefaults.init(suiteName:_)`.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
