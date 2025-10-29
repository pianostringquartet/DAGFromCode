---
title: userActivity(_:isActive:_:)
description: Advertises a user activity type.
source: https://developer.apple.com/documentation/swiftui/view/useractivity(_:isactive:_:)
timestamp: 2025-10-29T00:13:25.375Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# userActivity(_:isActive:_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Advertises a user activity type.

```swift
nonisolated func userActivity(_ activityType: String, isActive: Bool = true, _ update: @escaping (NSUserActivity) -> ()) -> some View
```

## Parameters

**activityType**

The type of activity to advertise.



**isActive**

When `false`, avoids advertising the activity. Defaults to `true`.



**update**

A function that modifies the passed-in activity for advertisement.



## Discussion

You can use `userActivity(_:isActive:_:)` to start, stop, or modify the advertisement of a specific type of user activity.

The scope of the activity applies only to the scene or window the view is in.

## Sending and receiving user activities

- [Restoring your app’s state with SwiftUI](/documentation/swiftui/restoring-your-app-s-state-with-swiftui)
- [userActivity(_:element:_:)](/documentation/swiftui/view/useractivity(_:element:_:))
- [onContinueUserActivity(_:perform:)](/documentation/swiftui/view/oncontinueuseractivity(_:perform:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
